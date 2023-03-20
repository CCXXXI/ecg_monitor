import "package:logging/logging.dart";
import "package:quiver/time.dart";

import "../database.dart";
import "../utils/ecg_data.dart";
import "../utils/strings.dart";
import "device.dart";

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
        aSecond,
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

      // Yield the next fake ECG data.
      final i = t.millisecondsSinceEpoch ~/ _tick.inMilliseconds % leadI.length;
      _logger.finest("yield t=$t, i=$i");
      yield EcgData(time: t, leadI: leadI[i], leadII: leadII[i]);
    }
  }
}

final fakeDevice = _FakeDevice();
