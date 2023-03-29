import "package:animations/animations.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:time_range_picker/time_range_picker.dart";

import "../utils/database.dart";
import "../utils/time.dart";
import "data_types.dart";
import "label_details.dart";

part "analytics.g.dart";

@riverpod
Future<int> _labelCount(
  _LabelCountRef ref,
  Label label,
  DateTime start,
  DateTime end,
) async =>
    labelCount(label, start, end);

@cwidget
Widget analytics(
  BuildContext context,
  WidgetRef ref,
  DateTime start,
  DateTime end,
) {
  final backgroundColor = Theme.of(context).colorScheme.background;

  return Column(
    children: [
      Expanded(
        child: ListView(
          children: [
            for (final label in Label.values)
              OpenContainer(
                closedColor: backgroundColor,
                closedElevation: 0,
                closedBuilder: (_, __) {
                  final cntAsync =
                      ref.watch(_labelCountProvider(label, start, end));

                  return ListTile(
                    title: Text(label.name),
                    trailing: cntAsync.maybeWhen(
                      data: (cnt) => Text(cnt.toString()),
                      orElse: CircularProgressIndicator.new,
                    ),
                  );
                },
                openColor: backgroundColor,
                openBuilder: (_, __) => LabelDetails(label, start, end),
                useRootNavigator: true,
              ),
          ],
        ),
      ),
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
      ),
    ],
  );
}
