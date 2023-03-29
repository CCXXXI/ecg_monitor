import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";
import "package:quiver/time.dart";
import "package:time_range_picker/time_range_picker.dart";

import "../generated/l10n.dart";
import "../utils/time.dart";

part "controller.g.dart";

@swidget
Widget _analyticsController(
  BuildContext context,
  DateTime start,
  DateTime end,
) {
  final s = S.of(context);

  return TextButton(
    onPressed: () async {
      final now = DateTime.now().copyWith(second: 0, millisecond: 0);

      final result = await showTimeRangePicker(
        context: context,
        start: TimeOfDay.fromDateTime(start),
        end: TimeOfDay.fromDateTime(end),
        disabledTime: TimeRange(
          startTime: TimeOfDay.fromDateTime(now.subtract(aMinute)),
          endTime: TimeOfDay.fromDateTime(now.add(aMinute)),
        ),
        interval: aMinute,
        fromText: s.from,
        toText: s.to,
      ) as TimeRange?;

      if (result == null) {
        return;
      }

      final newEnd = result.endTime.toDateTimeBefore(now);
      final newStart = result.startTime.toDateTimeBefore(newEnd);

      if (context.mounted) {
        context.go("/analytics", extra: [newStart, newEnd]);
      }
    },
    // 2023-03-29 17:02:00.000000 -> 03-29 17:02
    child: Text(
      "${s.from} ${start.toString().substring(5, 16)} "
      "${s.to} ${end.toString().substring(5, 16)}",
    ),
  );
}
