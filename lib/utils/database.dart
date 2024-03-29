import "package:flutter/material.dart";
import "package:isar/isar.dart";
import "package:logging/logging.dart";
import "package:path_provider/path_provider.dart";
import "package:quiver/time.dart";
import "package:shared_preferences/shared_preferences.dart";

import "../analytics/data_types.dart";
import "../device/device.dart";
import "../device/fake_device.dart";

part "database.g.dart";

final _logger = Logger("Database");

// region Beat
@visibleForTesting
@collection
class Beat {
  const Beat({
    required this.time,
    required this.label,
  });

  factory Beat.fromBeatData(BeatData data) => Beat(
        time: data.time,
        label: data.label,
      );

  BeatData toBeatData() => BeatData(
        time: time,
        label: label,
      );

  // ignore: avoid_field_initializers_in_const_classes
  final Id id = Isar.autoIncrement;

  @Index()
  final DateTime time;

  @enumerated
  @Index(composite: [CompositeIndex("time")])
  final Label label;
}

Future<void> writeBeatData(BeatData data) async {
  final stopwatch = Stopwatch()..start();
  await _isar.writeTxn(() => _isar.beats.put(Beat.fromBeatData(data)));
  _logger.finer("Writing beat data took ${stopwatch.elapsed}.");
}

Future<int> labelCount(
  Label label,
  DateTime start,
  DateTime end,
) async {
  final stopwatch = Stopwatch()..start();
  final count = await _isar.beats
      .where()
      .labelEqualToTimeBetween(label, start, end)
      .count();
  _logger.fine("Finding label $label between $start and $end "
      "took ${stopwatch.elapsed}.");

  return count;
}

Future<List<DateTime>> labelTimes(
  Label label,
  DateTime start,
  DateTime end,
) async {
  final stopwatch = Stopwatch()..start();
  final times = await _isar.beats
      .where()
      .labelEqualToTimeBetween(label, start, end)
      .timeProperty()
      .findAll();
  _logger.fine("Finding label $label took ${stopwatch.elapsed}.");

  return times;
}

Future<List<BeatData>> beatDataBetween(DateTime start, DateTime end) async {
  final stopwatch = Stopwatch()..start();
  final data = await _isar.beats.where().timeBetween(start, end).findAll();
  _logger.fine("Finding beats between $start and $end "
      "took ${stopwatch.elapsed}.");

  return data.map((d) => d.toBeatData()).toList(growable: false);
}

Future<DateTime> beatTimeBefore(DateTime time) async {
  final stopwatch = Stopwatch()..start();
  final prevTime = await _isar.beats
      .where(sort: Sort.desc)
      .timeLessThan(time)
      .timeProperty()
      .findFirst();
  _logger.fine("Finding beat before $time took ${stopwatch.elapsed}.");

  return prevTime ?? time.subtract(aSecond);
}

Future<DateTime> beatTimeAfter(DateTime time) async {
  final stopwatch = Stopwatch()..start();
  final next = await _isar.beats
      .where(sort: Sort.asc)
      .timeGreaterThan(time)
      .timeProperty()
      .findFirst();
  _logger.fine("Finding beat after $time took ${stopwatch.elapsed}.");

  return next ?? time.add(aSecond);
}
// endregion

// region SamplePoint
@visibleForTesting
@collection
class SamplePoint {
  const SamplePoint({
    required this.millisecondsSinceEpoch,
    required this.leadI,
    required this.leadII,
  });

  factory SamplePoint.fromEcgData(EcgData data) => SamplePoint(
        millisecondsSinceEpoch: data.time.millisecondsSinceEpoch,
        leadI: data.leadI,
        leadII: data.leadII,
      );

  EcgData toEcgData() => EcgData(
        time: DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch),
        leadI: leadI,
        leadII: leadII,
      );

  final Id millisecondsSinceEpoch;
  final double leadI;
  final double leadII;
}

const _ecgDataBufferSize = 100;
final _ecgDataBuffer = <EcgData>[];

Future<void> writeEcgData(EcgData data) async {
  // Write to the buffer.
  _ecgDataBuffer.add(data);

  // If the buffer is not full, return.
  // Do not create a write transaction for every sample point.
  // That would be very slow.
  if (_ecgDataBuffer.length < _ecgDataBufferSize) {
    return;
  }

  // Write the buffer to the database.
  final stopwatch = Stopwatch()..start();
  await _isar.writeTxn(
    () => _isar.samplePoints.putAll(
      _ecgDataBuffer.map(SamplePoint.fromEcgData).toList(growable: false),
    ),
  );
  _logger.finer("Writing $_ecgDataBufferSize sample points took "
      "${stopwatch.elapsed}.");

  // Clear the buffer after writing to the database.
  _ecgDataBuffer.clear();
}

Future<List<EcgData>> ecgDataBetween(DateTime start, DateTime end) async {
  final stopwatch = Stopwatch()..start();
  final data = await _isar.samplePoints
      .where()
      .millisecondsSinceEpochBetween(
        start.millisecondsSinceEpoch,
        end.millisecondsSinceEpoch,
      )
      .findAll();
  _logger.fine("Finding sample points between $start and $end "
      "took ${stopwatch.elapsed}.");

  return data.map((d) => d.toEcgData()).toList(growable: false);
}
// endregion

// region FakeSamplePoint
@visibleForTesting
@collection
class FakeSamplePoint {
  const FakeSamplePoint({
    required this.millisecondsSinceStart,
    required this.leadI,
    required this.leadII,
  });

  factory FakeSamplePoint.fromFakeEcgData(FakeEcgData data) => FakeSamplePoint(
        millisecondsSinceStart: data.sinceStart.inMilliseconds,
        leadI: data.leadI,
        leadII: data.leadII,
      );

  FakeEcgData toFakeEcgData() => FakeEcgData(
        sinceStart: Duration(milliseconds: millisecondsSinceStart),
        leadI: leadI,
        leadII: leadII,
      );

  final Id millisecondsSinceStart;
  final double leadI;
  final double leadII;
}

Future<void> writeFakeEcgData(Iterable<FakeEcgData> data) async {
  final stopwatch = Stopwatch()..start();
  await _isar.writeTxn(() async {
    // Clear old data.
    await _isar.fakeSamplePoints.clear();

    // Write new data.
    for (final d in data) {
      await _isar.fakeSamplePoints.put(FakeSamplePoint.fromFakeEcgData(d));
    }
  });
  _logger.fine("Writing fake sample points took ${stopwatch.elapsed}.");
}

Future<List<FakeEcgData>> getFakeEcgData() async {
  final stopwatch = Stopwatch()..start();
  final data = await _isar.fakeSamplePoints.where().findAll();
  _logger.fine("Get all fake sample points took ${stopwatch.elapsed}.");

  return data.map((d) => d.toFakeEcgData()).toList(growable: false);
}
// endregion

late final SharedPreferences prefs;
late final Isar _isar;

Future<void> initDatabase() async {
  prefs = await SharedPreferences.getInstance();
  final dir = await getApplicationDocumentsDirectory();
  _isar = await Isar.open(
    directory: dir.path,
    [
      BeatSchema,
      SamplePointSchema,
      FakeSamplePointSchema,
    ],
  );
}

@visibleForTesting
Future<void> clearDatabase() async {
  await prefs.clear();
  await _isar.writeTxn(() async => _isar.clear());
}
