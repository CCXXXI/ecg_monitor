import "package:ecg_monitor/monitor/chart.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("getIntervalMs", () {
    test("portrait", () {
      double f(double durationS) => Chart.getIntervalMs(true, durationS);

      const maxIntervalCount = Chart.maxIntervalCountPortrait;

      for (var i = 1.0; i <= maxIntervalCount; ++i) {
        expect(f(i), 1000);
      }

      for (var i = maxIntervalCount + 1.0; i <= maxIntervalCount * 2; ++i) {
        expect(f(i), 2000);
      }
    });
    test("landscape", () {
      double f(double durationS) => Chart.getIntervalMs(false, durationS);

      const maxIntervalCount = Chart.maxIntervalCountLandscape;

      for (var i = 1.0; i <= maxIntervalCount; ++i) {
        expect(f(i), 1000);
      }

      for (var i = maxIntervalCount + 1.0; i <= maxIntervalCount * 2; ++i) {
        expect(f(i), 2000);
      }
    });
  });
}
