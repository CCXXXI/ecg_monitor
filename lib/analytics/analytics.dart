import "package:animations/animations.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../utils/database.dart";
import "controller.dart";
import "data_types.dart";
import "label_card.dart";
import "label_details.dart";

part "analytics.g.dart";

@riverpod
Future<Map<Label, int>> _labelCounts(
  _LabelCountsRef ref,
  DateTime start,
  DateTime end,
) async {
  final counts = await Future.wait(
    Label.values.map((label) => labelCount(label, start, end)),
  );
  return Map.fromIterables(Label.values, counts);
}

@cwidget
Widget _analytics(
  BuildContext context,
  WidgetRef ref,
  DateTime start,
  DateTime end,
) {
  final backgroundColor = Theme.of(context).colorScheme.background;
  final cnt = ref.watch(_labelCountsProvider(start, end));
  final values = cnt.value?.values;
  final total = values?.reduce((a, b) => a + b);

  return Column(
    children: [
      if (cnt.isLoading)
        const LinearProgressIndicator()
      else
        const SizedBox(height: 4),
      ListTile(
        title: const Text("总体分析结果"),
        subtitle: const Text("报告仅供参考，有胸痛、胸闷等不适感请及时就医。"),
        trailing: Text(
          "正常",
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.green[700]),
        ),
      ),
      const Divider(),
      Expanded(
        child: ListView(
          children: [
            for (final label in Label.values)
              OpenContainer(
                closedColor: backgroundColor,
                closedElevation: 0,
                tappable: false,
                closedBuilder: (_, onTap) => LabelCard(
                  label,
                  cnt.value?[label],
                  total,
                  onTap,
                ),
                openColor: backgroundColor,
                openBuilder: (_, __) => LabelDetails(label, start, end),
                useRootNavigator: true,
              ),
          ],
        ),
      ),
      AnalyticsController(start, end),
    ],
  );
}
