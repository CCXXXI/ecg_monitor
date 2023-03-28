import "package:flutter/material.dart";
import "package:isar/isar.dart";
import "package:logging/logging.dart";
import "package:shared_preferences/shared_preferences.dart";

import "../analytics/data_types.dart";
import "../device_manager/device.dart";
import "../device_manager/fake_device.dart";

part "database.g.dart";

final _logger = Logger("Database");

// region Beat
@visibleForTesting
@collection
class Beat {
  const Beat({
    required this.millisecondsSinceEpoch,
    required this.label,
  });

  factory Beat.fromBeatData(BeatData data) => Beat(
        millisecondsSinceEpoch: data.time.millisecondsSinceEpoch,
        label: data.label,
      );

  BeatData toBeatData() => BeatData(
        time: DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch),
        label: label,
      );

  final Id millisecondsSinceEpoch;

  @enumerated
  @Index()
  final Label label;
}

Future<void> writeBeatData(BeatData data) async {
  final stopwatch = Stopwatch()..start();
  await _isar.writeTxn(() => _isar.beats.put(Beat.fromBeatData(data)));
  _logger.finer("Writing beat data took ${stopwatch.elapsed}.");
}

Future<int> labelCount(Label label) async {
  final stopwatch = Stopwatch()..start();
  final count = await _isar.beats.where().labelEqualTo(label).count();
  _logger.fine("Counting label $label took ${stopwatch.elapsed}.");

  return count;
}

Future<List<DateTime>> labelTimes(Label label) async {
  final stopwatch = Stopwatch()..start();
  final millisecondsSinceEpoch = await _isar.beats
      .where()
      .labelEqualTo(label)
      .millisecondsSinceEpochProperty()
      .findAll();
  _logger.fine("Finding label $label took ${stopwatch.elapsed}.");

  return millisecondsSinceEpoch
      .map(DateTime.fromMillisecondsSinceEpoch)
      .toList(growable: false);
}

Future<List<BeatData>> beatDataBetween(DateTime start, DateTime end) async {
  final stopwatch = Stopwatch()..start();
  final data = await _isar.beats
      .where()
      .millisecondsSinceEpochBetween(
        start.millisecondsSinceEpoch,
        end.millisecondsSinceEpoch,
      )
      .findAll();
  _logger.fine("Finding beats between $start and $end "
      "took ${stopwatch.elapsed}.");

  return data.map((d) => d.toBeatData()).toList(growable: false);
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

Future<void> writeEcgData(EcgData data) async {
  final stopwatch = Stopwatch()..start();
  await _isar.writeTxn(
    () => _isar.samplePoints.put(SamplePoint.fromEcgData(data)),
  );
  _logger.finest("Writing sample point took ${stopwatch.elapsed}.");
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
  _logger.fine("Finding fake sample points took ${stopwatch.elapsed}.");

  return data.map((d) => d.toFakeEcgData()).toList(growable: false);
}
// endregion

late final SharedPreferences prefs;
late final Isar _isar;

Future<void> initDatabase() async {
  prefs = await SharedPreferences.getInstance();
  _isar = await Isar.open([
    BeatSchema,
    SamplePointSchema,
    FakeSamplePointSchema,
  ]);
}

@visibleForTesting
Future<void> clearDatabase() async {
  await prefs.clear();
  await _isar.writeTxn(() async => _isar.clear());
}
