import "package:ecg_monitor/utils/time.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("TimeOfDay.toLastPastDateTime", () {
    final now = DateTime(2023, 1, 1, 1);
    test("past time", () {
      const pastTime = TimeOfDay(hour: 0, minute: 0);
      final dateTime = pastTime.toDateTimeBefore(now);
      expect(dateTime.isBefore(now), isTrue);
    });
    test("future time", () {
      const futureTime = TimeOfDay(hour: 23, minute: 59);
      final dateTime = futureTime.toDateTimeBefore(now);
      expect(dateTime.isBefore(now), isTrue);
    });
  });

  group("DateTime.toTimeString", () {
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
