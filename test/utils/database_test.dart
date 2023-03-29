import "package:ecg_monitor/analytics/data_types.dart";
import "package:ecg_monitor/device_manager/device.dart";
import "package:ecg_monitor/device_manager/fake_device.dart";
import "package:ecg_monitor/utils/database.dart";
import "package:flutter_test/flutter_test.dart";
import "package:isar/isar.dart";
import "package:quiver/time.dart";
import "package:shared_preferences/shared_preferences.dart";

final d2 = DateTime(2022);
final d3 = DateTime(2023);
final d4 = DateTime(2024);

void main() {
  group("data types", () {
    test("EcgData -> SamplePoint -> EcgData", () {
      final originData = EcgData(
        time: d3,
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
      expect(await labelCount(Label.sinusRhythm, d2, d4), 0);
      expect(await labelTimes(Label.sinusRhythm, d2, d4), isEmpty);

      final fakeBeatData = BeatData(
        time: d3,
        label: Label.sinusRhythm,
      );
      await writeBeatData(fakeBeatData);

      expect(await labelCount(Label.sinusRhythm, d2, d4), 1);
      expect(await labelTimes(Label.sinusRhythm, d2, d4), [fakeBeatData.time]);
      expect(await beatDataBetween(d2, d4), [fakeBeatData]);

      expect(await beatTimeBefore(d4), fakeBeatData.time);
      expect(await beatTimeAfter(d2), fakeBeatData.time);

      expect((await beatTimeBefore(d2)).isBefore(d2), isTrue);
      expect((await beatTimeAfter(d4)).isAfter(d4), isTrue);
    });

    test("SamplePoint", () async {
      // There is no data at the beginning.
      expect(await ecgDataBetween(d2, d4), isEmpty);

      // There is a buffer so the data is not immediately available.
      await writeEcgData(EcgData(time: d3, leadI: 1, leadII: 2));
      expect(await ecgDataBetween(d2, d4), isEmpty);

      // Write enough data to flush the buffer.
      for (var i = 0; i < 500; i++) {
        await writeEcgData(
          EcgData(time: d3.add(aSecond * i), leadI: 1, leadII: 2),
        );
      }
      expect(await ecgDataBetween(d2, d4), isNotEmpty);
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
