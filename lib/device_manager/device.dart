import "package:flutter/services.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:quiver/time.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../database.dart";
import "../utils/constants/keys.dart" as key;
import "../utils/constants/strings.dart" as str;

part "device.g.dart";

abstract class Device {
  String get id;

  String get name;

  String get model;

  /// Received Signal Strength Indication
  Stream<int> get rssiStream;

  Stream<int> get batteryStream;

  Stream<double> get ecgStream;

  Stream<bool> get connectedStream;
}

class _FakeDevice implements Device {
  /// 采样频率
  static const _sampleRateHz = 250;

  /// 采样周期
  static const _tick = Duration(
    milliseconds: Duration.millisecondsPerSecond ~/ _sampleRateHz,
  );

  @override
  String get id => str.fakeDevice;

  @override
  String get name => str.fakeDevice;

  @override
  String get model => str.fakeDeviceModel;

  @override
  Stream<int> get rssiStream => Stream.value(-42);

  @override
  Stream<int> get batteryStream => Stream.value(100);

  @override
  Stream<double> get ecgStream async* {
    final dataRaw = await rootBundle.loadString("assets/debug/input.txt");
    final data = dataRaw
        .split("\n")
        .where((line) => line.isNotEmpty)
        .map(double.parse)
        .toList(growable: false);

    yield* Stream.periodic(
      _tick,
      (i) => data[i % data.length],
    );
  }

  @override
  Stream<bool> get connectedStream => Stream.periodic(
        aSecond,
        (_) => prefs.getBool(str.fakeDevice) ?? false,
      );
}

final fakeDevice = _FakeDevice();

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

final ecgProvider = StreamProvider.autoDispose<double>(
  (ref) {
    final device = ref.watch(currentDeviceProvider);
    final connected = ref.watch(connectedProvider).valueOrNull ?? false;

    if (device == null || !connected) {
      return const Stream.empty();
    }

    return device.ecgStream;
  },
);
