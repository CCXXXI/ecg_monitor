import "package:ecg_monitor/ecg/real_time/heart_rate/heart_rate.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("HeartRateData", () {
    test(
      "available",
      () => expect(const HeartRateData(rate: 60).ready, isTrue),
    );
    test(
      "not available",
      () => expect(const HeartRateData(progress: .5).ready, isFalse),
    );
  });
}
