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
      "0ms",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(0).toTimeString(),
        endsWith(":00:00"),
      ),
    );
    test(
      "1ms",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(1).toTimeString(),
        endsWith(":00:00"),
      ),
    );
    test(
      "999ms",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(999).toTimeString(),
        endsWith(":00:00"),
      ),
    );
    test(
      "1s",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(1000).toTimeString(),
        endsWith(":00:01"),
      ),
    );
    test(
      "59s",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(59000).toTimeString(),
        endsWith(":00:59"),
      ),
    );
    test(
      "1m",
      () => expect(
        DateTime.fromMillisecondsSinceEpoch(60000).toTimeString(),
        endsWith(":01:00"),
      ),
    );
  });
}
