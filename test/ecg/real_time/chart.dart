import "dart:math";

import "package:ecg_monitor/ecg/real_time/chart.dart";
import "package:fl_chart/fl_chart.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("distance", () {
    const a = FlSpot.zero;
    const b = FlSpot(0, .1);
    const c = FlSpot(40, 0);
    const d = FlSpot(40, .1);

    test("a to b", () => expect(distance(a, b), 1));
    test("a to c", () => expect(distance(a, c), 1));
    test("a to d", () => expect(distance(a, d), sqrt2));
  });
}
