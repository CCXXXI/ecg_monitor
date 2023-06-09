import "package:flutter_reactive_ble/flutter_reactive_ble.dart" hide Logger;
import "package:logging/logging.dart";
import "package:permission_handler/permission_handler.dart";
import "package:quiver/time.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "device.dart";

part "bluetooth.g.dart";

final _logger = Logger("Bluetooth");

final _ble = FlutterReactiveBle();

@riverpod
Stream<List<DiscoveredDevice>> devices(DevicesRef ref) async* {
  _logger.info("Requesting location permission...");
  await Permission.location.request();

  _logger.info("Scanning for devices...");
  final found = <String, DiscoveredDevice>{};
  yield* _ble.scanForDevices(withServices: []).asyncExpand((d) {
    if (d.name.isEmpty) {
      return null;
    }

    _logger.finer("Found device: $d");
    found[d.id] = d;
    return Stream.value(found.values.toList());
  });
}

class HA301B implements Device {
  HA301B({required String id, required String name}) {
    _id = id;
    _name = name;
    _updateStream = _ble.connectToDevice(id: id);

    _rxCharacteristic = QualifiedCharacteristic(
      characteristicId: _rxUuid,
      serviceId: _serviceUuid,
      deviceId: _id,
    );
    _txCharacteristic = QualifiedCharacteristic(
      characteristicId: _txUuid,
      serviceId: _serviceUuid,
      deviceId: _id,
    );
    _txStream =
        _ble.subscribeToCharacteristic(_txCharacteristic).asBroadcastStream()
          ..listen((data) {
            assert(data.length == 20, "Unexpected data length: ${data.length}");
            assert(data[0] == 0xAA, "Unexpected data header: ${data[0]}");
            assert(data.last == 0xCC, "Unexpected data footer: ${data.last}");
          });
  }

  /// The 128-bit vendor-specific service UUID.
  static final _serviceUuid =
      Uuid.parse("6E400001-B5A3-F393-E0A9-E50E24DCCA9E");

  /// Write data to the RX Characteristic to send it on to the UART interface.
  static final _rxUuid = Uuid.parse("6E400002-B5A3-F393-E0A9-E50E24DCCA9E");

  /// Enable notifications for the TX Characteristic to receive data from the
  /// application. The application transmits all data that is received over
  /// UART as notifications.
  static final _txUuid = Uuid.parse("6E400003-B5A3-F393-E0A9-E50E24DCCA9E");

  late final String _id;
  late final String _name;
  late final Stream<ConnectionStateUpdate> _updateStream;

  late final QualifiedCharacteristic _rxCharacteristic;
  late final QualifiedCharacteristic _txCharacteristic;
  late final Stream<List<int>> _txStream;

  @override
  String get id => _id;

  @override
  String get name => _name;

  @override
  String get model => "HA301B";

  @override
  int get fs => 250;

  Duration get _tick => aSecond ~/ fs;

  @override
  Stream<DeviceConnectionState> get stateStream =>
      _updateStream.map((update) => update.connectionState);

  @override
  Stream<int> get batteryStream async* {
    while (true) {
      await _ble.writeCharacteristicWithoutResponse(
        _rxCharacteristic,
        value: [0xAA, 0x03, for (var i = 0; i < 17; ++i) 0x00, 0xCC],
      );

      final res = await _txStream.firstWhere((data) => data[1] == 0x03);
      yield res[2];

      await Future<void>.delayed(aMinute);
    }
  }

  @override
  Stream<EcgData> get ecgStream {
    var time = DateTime.now();
    return _txStream
        .where((data) => data[1] == 0x01)
        .asyncExpand((data) async* {
      for (var i = 0; i < 4; i++) {
        final start = 2 + i * 4;
        yield parseEcgData(
          time.add(_tick * i),
          data.sublist(start, start + 4),
        );
      }
      time = time.add(_tick * 4);
    });
  }

  static EcgData parseEcgData(DateTime time, List<int> raw) {
    assert(raw.length == 4, "Unexpected data length: ${raw.length}");

    return EcgData(
      time: time,
      leadI: ((raw[0] << 8) + raw[1] - (1 << 14)) / (1 << 9),
      leadII: ((raw[2] << 8) + raw[3] - (1 << 14)) / (1 << 9),
    );
  }
}
