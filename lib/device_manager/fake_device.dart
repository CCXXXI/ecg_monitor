import "package:quiver/time.dart";

import "../database.dart";
import "../utils/constants/data.dart";
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
  Stream<bool> get connectedStream => Stream.periodic(
        aSecond,
        (_) => prefs.getBool(key.fakeDeviceOn) ?? false,
      );

  @override
  Stream<int> get rssiStream => Stream.value(-42);

  @override
  Stream<int> get batteryStream => Stream.value(100);

  @override
  Stream<EcgData> get ecgStream async* {
    for (var t = DateTime.now();; t = t.add(_tick)) {
      await Future<void>.delayed(t.difference(DateTime.now()));

      final x = t.millisecondsSinceEpoch.toDouble();
      final i = x ~/ _tick.inMilliseconds % leadI.length;

      yield EcgData(time: x, leadI: leadI[i], leadII: leadII[i]);
    }
  }
}

final fakeDevice = _FakeDevice();
