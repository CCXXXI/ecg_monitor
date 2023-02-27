import "dart:math";

import "package:ecg_monitor/real_time/chart.dart";
import "package:fl_chart/fl_chart.dart";
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

  group("normalizedDistance", () {
    const a = FlSpot.zero;
    const b = FlSpot(0, .1);
    const c = FlSpot(40, 0);
    const d = FlSpot(40, .1);

    test("a to b", () => expect(Chart.normalizedDistance(a, b), 1));
    test("a to c", () => expect(Chart.normalizedDistance(a, c), 1));
    test("a to d", () => expect(Chart.normalizedDistance(a, d), sqrt2));
  });
}
