import "package:ecg_monitor/monitor.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("getIntervalMs", () {
    test("portrait", () {
      f(double durationS) => MonitorView.getIntervalMs(true, durationS);

      const maxIntervalCount = MonitorView.maxIntervalCountPortrait;

      for (double i = 1; i <= maxIntervalCount; ++i) {
        expect(f(i), 1000);
      }

      for (double i = maxIntervalCount + 1; i <= maxIntervalCount * 2; ++i) {
        expect(f(i), 2000);
      }
    });
    test("landscape", () {
      f(double durationS) => MonitorView.getIntervalMs(false, durationS);

      const maxIntervalCount = MonitorView.maxIntervalCountLandscape;

      for (double i = 1; i <= maxIntervalCount; ++i) {
        expect(f(i), 1000);
      }

      for (double i = maxIntervalCount + 1; i <= maxIntervalCount * 2; ++i) {
        expect(f(i), 2000);
      }
    });
  });
}
