import "package:flutter/material.dart";
import "package:isar/isar.dart";
import "package:logging/logging.dart";
import "package:shared_preferences/shared_preferences.dart";

import "../analytics/data_types.dart";
import "../device_manager/device.dart";

part "database.g.dart";

final _logger = Logger("Database");

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

late final SharedPreferences prefs;
late final Isar _isar;

Future<void> initDatabase() async {
  prefs = await SharedPreferences.getInstance();
  _isar = await Isar.open([SamplePointSchema, BeatSchema]);
}

// region Beat
void writeBeatData(BeatData data) {
  final stopwatch = Stopwatch()..start();
  _isar.writeTxnSync(() => _isar.beats.putSync(Beat.fromBeatData(data)));
  _logger.finer("Writing beat data took ${stopwatch.elapsed}.");
}

int labelCount(Label label) {
  final stopwatch = Stopwatch()..start();
  final count = _isar.beats.where().labelEqualTo(label).countSync();
  _logger.fine("Counting label $label took ${stopwatch.elapsed}.");

  return count;
}

List<DateTime> labelTimes(Label label) {
  final stopwatch = Stopwatch()..start();
  final msSinceEpoch = _isar.beats
      .where()
      .labelEqualTo(label)
      .millisecondsSinceEpochProperty()
      .findAllSync();
  _logger.fine("Finding label $label took ${stopwatch.elapsed}.");

  return msSinceEpoch
      .map(DateTime.fromMillisecondsSinceEpoch)
      .toList(growable: false);
}

List<BeatData> beatDataBetween(DateTime start, DateTime end) {
  final stopwatch = Stopwatch()..start();
  final data = _isar.beats
      .where()
      .millisecondsSinceEpochBetween(
        start.millisecondsSinceEpoch,
        end.millisecondsSinceEpoch,
      )
      .findAllSync();
  _logger.fine("Finding beats between $start and $end "
      "took ${stopwatch.elapsed}.");

  return data.map((d) => d.toBeatData()).toList(growable: false);
}
// endregion

// region SamplePoint
void writeEcgData(EcgData data) {
  final stopwatch = Stopwatch()..start();
  _isar.writeTxnSync(
    () => _isar.samplePoints.putSync(SamplePoint.fromEcgData(data)),
  );
  _logger.finest("Writing sample point took ${stopwatch.elapsed}.");
}

List<EcgData> ecgDataBetween(DateTime start, DateTime end) {
  final stopwatch = Stopwatch()..start();
  final data = _isar.samplePoints
      .where()
      .millisecondsSinceEpochBetween(
        start.millisecondsSinceEpoch,
        end.millisecondsSinceEpoch,
      )
      .findAllSync();
  _logger.fine("Finding sample points between $start and $end "
      "took ${stopwatch.elapsed}.");

  return data.map((d) => d.toEcgData()).toList(growable: false);
}
// endregion

@visibleForTesting
Future<void> clearDatabase() async {
  await prefs.clear();
  await _isar.writeTxn(() async => _isar.clear());
}
