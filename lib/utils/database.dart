import "package:isar/isar.dart";
import "package:shared_preferences/shared_preferences.dart";

import "../analytics/data_types.dart";
import "../device_manager/device.dart";

part "database.g.dart";

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
late final Isar isar;

Future<void> initDatabase() async {
  prefs = await SharedPreferences.getInstance();
  isar = await Isar.open([SamplePointSchema, BeatSchema]);
}

int labelCount(Label label) =>
    isar.beats.where().labelEqualTo(label).countSync();

List<BeatData> beatDataBetween(DateTime start, DateTime end) {
  final data = isar.beats
      .where()
      .millisecondsSinceEpochBetween(
        start.millisecondsSinceEpoch,
        end.millisecondsSinceEpoch,
      )
      .findAllSync();

  return data.map((d) => d.toBeatData()).toList();
}
