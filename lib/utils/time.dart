import "package:flutter/material.dart";
import "package:quiver/time.dart";

extension TimeOfDayToDateTime on TimeOfDay {
  /// Returns a [DateTime] with the same hour and minute as this [TimeOfDay].
  /// The date is set to today if the time is in the past,
  /// or to yesterday if the time is in the future.
  DateTime toDateTimeBefore(DateTime now) {
    final timeOfToday = DateTime(now.year, now.month, now.day, hour, minute);
    final timeOfYesterday = timeOfToday.subtract(aDay);

    return timeOfToday.isBefore(now) ? timeOfToday : timeOfYesterday;
  }
}

extension DateTimeToTimeString on DateTime {
  String toTimeString({required bool showMs}) {
    if (millisecond != 0 && !showMs) {
      return "";
    }
    final msStr = showMs ? ".${millisecond.toString().padLeft(3, "0")}" : "";
    return "${hour.toString().padLeft(2, "0")}"
        ":${minute.toString().padLeft(2, "0")}"
        ":${second.toString().padLeft(2, "0")}"
        "$msStr";
  }
}
