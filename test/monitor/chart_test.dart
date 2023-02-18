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
  group("msToTimeString", () {
    test("0ms", () => expect(Chart.msToTimeString(0), endsWith(":00:00")));
    test("1ms", () => expect(Chart.msToTimeString(1), endsWith(":00:00")));
    test("999ms", () => expect(Chart.msToTimeString(999), endsWith(":00:00")));
    test("1s", () => expect(Chart.msToTimeString(1000), endsWith(":00:01")));
    test("59s", () => expect(Chart.msToTimeString(59000), endsWith(":00:59")));
    test("1m", () => expect(Chart.msToTimeString(60000), endsWith(":01:00")));
  });
}
