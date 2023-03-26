import "package:animations/animations.dart";
import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:isar/isar.dart";

import "../utils/database.dart";
import "data_types.dart";
import "label_details.dart";

part "analytics.g.dart";

int _labelCount(Label label) =>
    isar.beats.where().labelEqualTo(label).countSync();

@swidget
Widget analytics(BuildContext context) {
  final backgroundColor = Theme.of(context).colorScheme.background;

  return ListView(
    children: [
      for (final label in Label.values)
        OpenContainer(
          closedColor: backgroundColor,
          closedElevation: 0,
          closedBuilder: (_, __) => ListTile(
            title: Text(label.name),
            trailing: Text(_labelCount(label).toString()),
          ),
          openColor: backgroundColor,
          openBuilder: (_, __) => LabelDetails(label),
          useRootNavigator: true,
        ),
    ],
  );
}
