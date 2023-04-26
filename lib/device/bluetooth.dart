import "package:flutter_reactive_ble/flutter_reactive_ble.dart" hide Logger;
import "package:logging/logging.dart";
import "package:permission_handler/permission_handler.dart";
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
      return const Stream.empty();
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

  @override
  String get id => _id;

  @override
  String get name => _name;

  @override
  String get model => "HA301B";

  @override
  int get fs => 125;

  @override
  Stream<DeviceConnectionState> get stateStream =>
      _updateStream.map((update) => update.connectionState);

  @override
  // TODO: implement batteryStream
  Stream<int> get batteryStream => const Stream.empty();

  @override
  // TODO: implement ecgStream
  Stream<EcgData> get ecgStream => const Stream.empty();
}
