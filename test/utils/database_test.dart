import "package:ecg_monitor/device_manager/device.dart";
import "package:ecg_monitor/utils/database.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
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
}
