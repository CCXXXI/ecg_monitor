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

  group("DateTimeToTimeString", () {
    test(
      "0ms hide ms",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(0).toTimeString(showMs: false),
        endsWith(":00:00"),
      ),
    );
    test(
      "0ms show ms",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(0).toTimeString(showMs: true),
        endsWith(":00:00.000"),
      ),
    );
    test(
      "1ms hide ms",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(1).toTimeString(showMs: false),
        isEmpty,
      ),
    );
    test(
      "1ms show ms",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(1).toTimeString(showMs: true),
        endsWith(":00:00.001"),
      ),
    );
    test(
      "999ms hide ms",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(999).toTimeString(showMs: false),
        isEmpty,
      ),
    );
    test(
      "999ms show ms",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(999).toTimeString(showMs: true),
        endsWith(":00:00.999"),
      ),
    );
    test(
      "1s hide ms",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(1000).toTimeString(showMs: false),
        endsWith(":00:01"),
      ),
    );
    test(
      "1s show ms",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(1000).toTimeString(showMs: true),
        endsWith(":00:01.000"),
      ),
    );
  });
}
