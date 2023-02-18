import "package:ecg_monitor/monitor/chart.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("getIntervalMs", () {
    test("portrait", () {
      const maxIntervalCount = Chart.maxIntervalCountPortrait;

      for (var i = 1.0; i <= maxIntervalCount; ++i) {
        expect(Chart.getIntervalMs(i, isPortrait: true), 1000);
      }

      for (var i = maxIntervalCount + 1.0; i <= maxIntervalCount * 2; ++i) {
        expect(Chart.getIntervalMs(i, isPortrait: true), 2000);
      }
    });
    test("landscape", () {
      const maxIntervalCount = Chart.maxIntervalCountLandscape;

      for (var i = 1.0; i <= maxIntervalCount; ++i) {
        expect(Chart.getIntervalMs(i, isPortrait: false), 1000);
      }

      for (var i = maxIntervalCount + 1.0; i <= maxIntervalCount * 2; ++i) {
        expect(Chart.getIntervalMs(i, isPortrait: false), 2000);
      }
    });
  });
}
