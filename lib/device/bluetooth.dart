import "package:flutter_reactive_ble/flutter_reactive_ble.dart" hide Logger;
import "package:logging/logging.dart";
import "package:permission_handler/permission_handler.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "bluetooth.g.dart";

final _logger = Logger("Bluetooth");

final _ble = FlutterReactiveBle();

@riverpod
Stream<List<DiscoveredDevice>> devices(DevicesRef ref) async* {
  _logger.info("Requesting location permission...");
  await Permission.location.request();

  _logger.info("Scanning for devices...");
  final list = <DiscoveredDevice>[];
  yield* _ble.scanForDevices(withServices: []).map((d) {
    _logger.info("Discovered device: $d");
    list.add(d);
    return list;
  });
}
