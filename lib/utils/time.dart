import "package:flutter/material.dart";
import "package:quiver/time.dart";

extension TimeOfDayToDateTime on TimeOfDay {
  /// Returns a [DateTime] with the same hour and minute as this [TimeOfDay].
  /// The date is set to today if the time is in the past,
  /// or to yesterday if the time is in the future.
  DateTime toLastPastDateTime() {
    final now = DateTime.now();
    final timeOfToday = DateTime(now.year, now.month, now.day, hour, minute);
    final timeOfYesterday = timeOfToday.subtract(aDay);

    return timeOfToday.isBefore(now) ? timeOfToday : timeOfYesterday;
  }
}
