import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";
import "package:time_range_picker/time_range_picker.dart";

import "../utils/time.dart";

part "controller.g.dart";

@swidget
Widget _analyticsController(
  BuildContext context,
  DateTime start,
  DateTime end,
) =>
    TextButton(
      onPressed: () async {
        final result = await showTimeRangePicker(
          context: context,
        ) as TimeRange?;
        if (result == null) {
          return;
        }

        final end = result.endTime.toDateTimeBefore(DateTime.now());
        final start = result.startTime.toDateTimeBefore(end);

        if (context.mounted) {
          context.go("/analytics", extra: [start, end]);
        }
      },
      // 2023-03-29 17:02:00.000000 -> 2023-03-29 17:02
      child: Text(
        "${start.toString().substring(0, 16)}"
        " - "
        "${end.toString().substring(0, 16)}",
      ),
    );
