import "package:isar/isar.dart";
import "package:shared_preferences/shared_preferences.dart";

import "../device_manager/device.dart";

part "database.g.dart";

late final SharedPreferences prefs;

Future<void> initPrefs() async {
  prefs = await SharedPreferences.getInstance();
}

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

  final Id millisecondsSinceEpoch;
  final double leadI;
  final double leadII;
}
