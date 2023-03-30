import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../utils/database.dart";
import "data_types.dart";

part "label_details.g.dart";

@riverpod
Future<List<DateTime>> _labelTimes(
  _LabelTimesRef ref,
  Label label,
  DateTime start,
  DateTime end,
) async =>
    labelTimes(label, start, end);

@cwidget
Widget _labelDetails(
  BuildContext context,
  WidgetRef ref,
  Label label,
  DateTime start,
  DateTime end,
) {
  final timesAsync = ref.watch(_labelTimesProvider(label, start, end));

  return Scaffold(
    appBar: AppBar(title: Text(label.name)),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(label.desc),
        ),
        Expanded(
          child: timesAsync.maybeWhen(
            data: (times) => ListView(
              children: [
                for (final time in times)
                  ListTile(
                    title: Text(time.toString()),
                    onTap: () => context
                      ..pop()
                      ..go("/history", extra: time),
                  ),
              ],
            ),
            orElse: () => const Center(child: CircularProgressIndicator()),
          ),
        ),
      ],
    ),
  );
}
