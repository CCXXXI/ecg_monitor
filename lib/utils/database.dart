import "package:isar/isar.dart";
import "package:shared_preferences/shared_preferences.dart";

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

late final SharedPreferences prefs;
late final Isar isar;

Future<void> initDatabase() async {
  prefs = await SharedPreferences.getInstance();
  isar = await Isar.open([SamplePointSchema]);
}
