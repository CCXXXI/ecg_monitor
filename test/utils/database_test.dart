import "package:ecg_monitor/analytics/data_types.dart";
import "package:ecg_monitor/device_manager/device.dart";
import "package:ecg_monitor/device_manager/fake_device.dart";
import "package:ecg_monitor/utils/database.dart";
import "package:flutter_test/flutter_test.dart";
import "package:isar/isar.dart";
import "package:quiver/time.dart";
import "package:shared_preferences/shared_preferences.dart";

void main() {
  group("data types", () {
    test("EcgData -> SamplePoint -> EcgData", () {
      final originData = EcgData(
        time: DateTime(2023),
        leadI: 1,
        leadII: 2,
      );

      final point = SamplePoint.fromEcgData(originData);
      final data = point.toEcgData();

      expect(data, originData);
    });

    test("SamplePoint -> EcgData -> SamplePoint", () {
      const originPoint = SamplePoint(
        millisecondsSinceEpoch: 0,
        leadI: 1,
        leadII: 2,
      );

      final data = originPoint.toEcgData();
      final point = SamplePoint.fromEcgData(data);

      expect(point.millisecondsSinceEpoch, originPoint.millisecondsSinceEpoch);
      expect(point.leadI, originPoint.leadI);
      expect(point.leadII, originPoint.leadII);
    });
  });

  group("database", () {
    setUpAll(() async {
      SharedPreferences.setMockInitialValues({});
      await Isar.initializeIsarCore(download: true);
      await initDatabase();
    });
    tearDown(clearDatabase);

    test("Beat", () async {
      expect(await labelCount(Label.sinusRhythm), 0);
      expect(await labelTimes(Label.sinusRhythm), isEmpty);

      final fakeBeatData = BeatData(
        time: DateTime(2023),
        label: Label.sinusRhythm,
      );
      await writeBeatData(fakeBeatData);

      expect(await labelCount(Label.sinusRhythm), 1);
      expect(await labelTimes(Label.sinusRhythm), [fakeBeatData.time]);
      expect(
        await beatDataBetween(DateTime(2022), DateTime(2024)),
        [fakeBeatData],
      );
    });

    test("SamplePoint", () async {
      expect(await ecgDataBetween(DateTime(2022), DateTime(2024)), isEmpty);

      final fakeEcgData = EcgData(
        time: DateTime(2023),
        leadI: 1,
        leadII: 2,
      );
      await writeEcgData(fakeEcgData);

      expect(
        await ecgDataBetween(DateTime(2022), DateTime(2024)),
        [fakeEcgData],
      );
    });

    test("FakeSamplePoint", () async {
      expect(await getFakeEcgData(), isEmpty);

      final data = FakeEcgData(
        sinceStart: aSecond,
        leadI: 1,
        leadII: 2,
      );
      await writeFakeEcgData([data]);

      expect(await getFakeEcgData(), [data]);
    });
  });
}
