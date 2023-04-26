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
