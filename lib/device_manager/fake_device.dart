import "package:fl_chart/fl_chart.dart";
import "package:flutter/services.dart";
import "package:quiver/time.dart";

import "../database.dart";
import "../utils/constants/keys.dart" as key;
import "../utils/constants/strings.dart" as str;
import "device.dart";

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
  Stream<FlSpot> get ecgStream async* {
    final dataRaw =
        await rootBundle.loadString("assets/debug/107_leadII_10min.txt");
    final data = dataRaw
        .split("\n")
        .where((line) => line.isNotEmpty)
        .map(double.parse)
        .toList(growable: false);

    for (var t = DateTime.now();; t = t.add(_tick)) {
      await Future<void>.delayed(t.difference(DateTime.now()));

      final x = t.millisecondsSinceEpoch.toDouble();
      final y = data[x ~/ _tick.inMilliseconds % data.length];

      yield FlSpot(x, y);
    }
  }

  @override
  Stream<bool> get connectedStream => Stream.periodic(
        aSecond,
        (_) => prefs.getBool(key.fakeDeviceOn) ?? false,
      );
}

final fakeDevice = _FakeDevice();
