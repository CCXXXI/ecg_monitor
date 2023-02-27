import "dart:math";

import "package:ecg_monitor/ecg/real_time/real_time_chart.dart";
import "package:fl_chart/fl_chart.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("normalizedDistance", () {
    const a = FlSpot.zero;
    const b = FlSpot(0, .1);
    const c = FlSpot(40, 0);
    const d = FlSpot(40, .1);

    test("a to b", () => expect(RealTimeChart.normalizedDistance(a, b), 1));
    test("a to c", () => expect(RealTimeChart.normalizedDistance(a, c), 1));
    test("a to d", () => expect(RealTimeChart.normalizedDistance(a, d), sqrt2));
  });
}
