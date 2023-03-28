import "dart:convert";

import "package:flutter/services.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:logging/logging.dart";
import "package:quiver/time.dart";

import "../utils/database.dart";
import "../utils/strings.dart";
import "device.dart";

part "fake_device.freezed.dart";
part "fake_device.g.dart";

class _MillisecondsDurationConverter implements JsonConverter<Duration, int> {
  const _MillisecondsDurationConverter();

  @override
  Duration fromJson(int json) => Duration(milliseconds: json);

  @override
  int toJson(Duration object) => object.inMilliseconds;
}

@freezed
class FakeEcgData with _$FakeEcgData {
  factory FakeEcgData({
    // ignore: invalid_annotation_target
    @JsonKey(name: "millisecondsSinceStart")
    @_MillisecondsDurationConverter()
        required Duration sinceStart,
    required double leadI,
    required double leadII,
  }) = _FakeEcgData;

  factory FakeEcgData.fromJson(Map<String, dynamic> json) =>
      _$FakeEcgDataFromJson(json);
}

late final List<FakeEcgData> _data;

Future<void> initFakeDevice() async {
  const path = "ios/Classes/PanTompkinsQRS/assets/ecg_data/assets/data.json";

  final s = await rootBundle.loadString(path);
  final json = jsonDecode(s) as List;
  _data = json
      .map((e) => FakeEcgData.fromJson(e as Map<String, dynamic>))
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

  @override
  Stream<bool> get connectedStream => Stream.periodic(
        aSecond,
        (_) => prefs.getBool(K.fakeDeviceOn) ?? false,
      );

  @override
  Stream<int> get rssiStream => Stream.value(-42);

  @override
  Stream<int> get batteryStream => Stream.value(100);

  @override
  Stream<EcgData> get ecgStream async* {
    final dataLenMs = (aMinute * 10).inMilliseconds;
    final startCycle = DateTime.now().millisecondsSinceEpoch ~/ dataLenMs;

    var firstRun = true;

    for (var cycle = startCycle;; ++cycle) {
      // The start time of this cycle.
      final startTime = DateTime.fromMillisecondsSinceEpoch(cycle * dataLenMs);

      for (final d in _data) {
        // Calculate the time of the data.
        final t = startTime.add(d.sinceStart);

        // At first run, skip the data before now.
        if (firstRun && t.isBefore(DateTime.now())) {
          continue;
        }
        firstRun = false;

        // Wait until the next data.
        await Future<void>.delayed(t.difference(DateTime.now()));

        // Do not yield data if the fake device is off.
        final fakeDeviceOn = prefs.getBool(K.fakeDeviceOn) ?? false;
        if (!fakeDeviceOn) {
          continue;
        }

        // Yield the next fake ECG data.
        _logger.finest("yield t=$t, d=$d");
        yield EcgData(time: t, leadI: d.leadI, leadII: d.leadII);
      }
    }
  }
}

final fakeDevice = _FakeDevice();
