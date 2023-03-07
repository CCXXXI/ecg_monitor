import "package:fl_chart/fl_chart.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../database.dart";
import "../utils/constants/keys.dart" as key;
import "fake_device.dart";

part "device.g.dart";

abstract class Device {
  String get id;

  String get name;

  String get model;

  Stream<bool> get connectedStream;

  /// Received Signal Strength Indication
  Stream<int> get rssiStream;

  Stream<int> get batteryStream;

  Stream<FlSpot> get ecgStream;
}

@riverpod
class CurrentDevice extends _$CurrentDevice {
  @override
  Device? build() {
    final id = prefs.getString(key.currentDeviceId);
    if (id == fakeDevice.id) {
      return fakeDevice;
    }
    return null;
  }

  // ignore: use_setters_to_change_properties
  Future<void> set(Device? device) async {
    if (device == null) {
      await prefs.remove(key.currentDeviceId);
    } else {
      await prefs.setString(key.currentDeviceId, device.id);
    }
    state = device;
  }
}

final rssiProvider = StreamProvider.autoDispose<int>(
  (ref) => ref.watch(currentDeviceProvider)?.rssiStream ?? const Stream.empty(),
);

final batteryProvider = StreamProvider.autoDispose<int>(
  (ref) =>
      ref.watch(currentDeviceProvider)?.batteryStream ?? const Stream.empty(),
);

final connectedProvider = StreamProvider.autoDispose<bool>(
  (ref) =>
      ref.watch(currentDeviceProvider)?.connectedStream ?? const Stream.empty(),
);

final ecgProvider = StreamProvider.autoDispose<FlSpot>(
  (ref) {
    final device = ref.watch(currentDeviceProvider);
    final connected = ref.watch(connectedProvider).valueOrNull ?? false;

    if (device == null || !connected) {
      return const Stream.empty();
    }

    return device.ecgStream;
  },
);
