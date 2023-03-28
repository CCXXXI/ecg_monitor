import "dart:convert";

import "package:flutter/services.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:logging/logging.dart";

import "../utils/database.dart";
import "../utils/strings.dart";
import "device.dart";

part "fake_device.freezed.dart";
part "fake_device.g.dart";

@freezed
class _Point with _$_Point {
  factory _Point({
    required int millisecondsSinceStart,
    required double leadI,
    required double leadII,
  }) = __Point;

  factory _Point.fromJson(Map<String, dynamic> json) => _$_PointFromJson(json);
}

late final List<_Point> _data;

Future<void> initFakeDevice() async {
  const path = "ios/Classes/PanTompkinsQRS/assets/ecg_data/assets/data.json";

  final s = await rootBundle.loadString(path);
  final json = jsonDecode(s) as List;
  _data = json
      .map((e) => _Point.fromJson(e as Map<String, dynamic>))
      .toList(growable: false);
}

final _logger = Logger("FakeDevice");

class _FakeDevice implements Device {
  @override
  String get id => fakeDeviceId;

  @override
  String get name => fakeDeviceId;

  @override
  String get model => fakeDeviceId;

  @override
  int get fs => 125;

  /// 采样周期
  Duration get _tick => Duration(
        milliseconds: Duration.millisecondsPerSecond ~/ fs,
      );

  @override
  Stream<bool> get connectedStream => Stream.periodic(
        _tick,
        (_) => prefs.getBool(K.fakeDeviceOn) ?? false,
      );

  @override
  Stream<int> get rssiStream => Stream.value(-42);

  @override
  Stream<int> get batteryStream => Stream.value(100);

  @override
  Stream<EcgData> get ecgStream async* {
    for (var t = DateTime.now();; t = t.add(_tick)) {
      // Wait until the next tick.
      await Future<void>.delayed(t.difference(DateTime.now()));

      // Do not yield data if the fake device is off.
      final fakeDeviceOn = prefs.getBool(K.fakeDeviceOn) ?? false;
      if (!fakeDeviceOn) {
        continue;
      }

      // Yield the next fake ECG data.
      final i = t.millisecondsSinceEpoch ~/ _tick.inMilliseconds % _data.length;
      _logger.finest("yield t=$t, i=$i");
      yield EcgData(time: t, leadI: _data[i].leadI, leadII: _data[i].leadII);
    }
  }
}

final fakeDevice = _FakeDevice();
