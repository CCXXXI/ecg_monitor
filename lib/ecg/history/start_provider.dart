import "package:flutter/material.dart";
import "package:quiver/time.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "start_provider.g.dart";

late DateTime startTime;

@riverpod
class Start extends _$Start {
  @override
  DateTime build() => startTime;

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
