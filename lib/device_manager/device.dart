import "dart:math";

import "package:flutter/services.dart";
import "package:quiver/time.dart";

import "../utils/constants.dart";

abstract class _Device {
  String get name;

  /// Received Signal Strength Indication
  Stream<int> get rssiStream;

  Stream<double> get ecgStream;
}

class _FakeDevice extends _Device {
  /// 采样频率
  static const _sampleRateHz = 250;

  /// 采样周期
  static const _tick = Duration(
    milliseconds: Duration.millisecondsPerSecond ~/ _sampleRateHz,
  );

  final _random = Random();

  @override
  String get name => Strings.fakeDevice;

  @override
  Stream<int> get rssiStream => Stream.periodic(
        aSecond,
        (_) => -32 - _random.nextInt(20),
      );

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

final device = _FakeDevice();
