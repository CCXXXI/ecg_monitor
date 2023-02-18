import "package:flutter/services.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../mine/settings.dart";
import "../utils/constants/strings.dart" as str;

part "device.g.dart";

abstract class Device {
  String get name;

  String get model;

  /// Received Signal Strength Indication
  Stream<int> get rssiStream;

  Stream<int> get batteryStream;

  Stream<double> get ecgStream;
}

class _FakeDevice implements Device {
  /// 采样频率
  static const _sampleRateHz = 250;

  /// 采样周期
  static const _tick = Duration(
    milliseconds: Duration.millisecondsPerSecond ~/ _sampleRateHz,
  );

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
}

@riverpod
Device? device(DeviceRef ref) {
  if (ref.watch(fakeDeviceProvider)) {
    return _FakeDevice();
  }
  return null;
}

final rssiProvider = StreamProvider.autoDispose<int>(
  (ref) => ref.watch(deviceProvider)!.rssiStream,
);

final batteryProvider = StreamProvider.autoDispose<int>(
  (ref) => ref.watch(deviceProvider)!.batteryStream,
);

final ecgProvider = StreamProvider.autoDispose<double>(
  (ref) => ref.watch(deviceProvider)!.ecgStream,
);
