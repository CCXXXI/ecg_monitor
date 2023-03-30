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
  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  final backgroundColor = Theme.of(context).colorScheme.background;
  final cnt = ref.watch(_labelCountsProvider(start, end));

  return Column(
    children: [
      if (cnt.isLoading)
        const LinearProgressIndicator()
      else
        const SizedBox(height: 4),
      Expanded(
        child: GridView.count(
          crossAxisCount: isPortrait ? 2 : 4,
          childAspectRatio: 1.75,
          children: [
            for (final label in Label.values)
              OpenContainer(
                closedColor: backgroundColor,
                closedElevation: 0,
                tappable: false,
                closedBuilder: (_, onTap) => LabelCard(
                  label,
                  cnt.value?[label],
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
