import "package:flutter/material.dart";
import "package:quiver/time.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "start_provider.g.dart";

@riverpod
class Start extends _$Start {
  @override
  DateTime build() => DateTime.now()
      // Show the data from 10 s ago to avoid showing an empty chart by default.
      .subtract(aSecond * 10)
      // Align the time to seconds to avoid showing a partial second.
      .copyWith(millisecond: 0, microsecond: 0);

  void set(TimeOfDay time) {
    // Combine [time] with today's date.
    final now = DateTime.now();
    var start = DateTime(now.year, now.month, now.day, time.hour, time.minute);

    // If the time is in the future, subtract a day.
    if (start.isAfter(now)) {
      start = start.subtract(aDay);
    }

    state = start;
  }

  void forward(Duration duration) => state = state.add(duration);

  void replay(Duration duration) => state = state.subtract(duration);
}
