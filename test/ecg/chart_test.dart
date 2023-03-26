import "package:ecg_monitor/ecg/chart.dart";
import "package:flutter_test/flutter_test.dart";
import "package:quiver/time.dart";

void main() {
  group("getIntervalMs", () {
    test("portrait", () {
      const maxIntervalCount = maxIntervalCountPortrait;

      for (var i = 1.0; i <= maxIntervalCount; ++i) {
        expect(getInterval(aSecond * i, isPortrait: true), aSecond);
      }

      for (var i = maxIntervalCount + 1.0; i <= maxIntervalCount * 2; ++i) {
        expect(getInterval(aSecond * i, isPortrait: true), aSecond * 2);
      }
    });

    test("landscape", () {
      const maxIntervalCount = maxIntervalCountLandscape;

      for (var i = 1.0; i <= maxIntervalCount; ++i) {
        expect(getInterval(aSecond * i, isPortrait: false), aSecond);
      }

      for (var i = maxIntervalCount + 1.0; i <= maxIntervalCount * 2; ++i) {
        expect(getInterval(aSecond * i, isPortrait: false), aSecond * 2);
      }
    });
  });
}
