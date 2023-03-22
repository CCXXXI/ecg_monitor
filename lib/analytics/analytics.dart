import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:isar/isar.dart";

import "../generated/l10n.dart";
import "../utils/database.dart";
import "data_types.dart";

part "analytics.g.dart";

int _labelCount(Label label) =>
    isar.beats.where().labelEqualTo(label).countSync();

@swidget
Widget analytics(BuildContext context) {
  final s = S.of(context);

  return ListView(
    children: [
      for (final label in Label.values)
        ListTile(
          title: Text(label.name(s)),
          trailing: Text(_labelCount(label).toString()),
        ),
    ],
  );
}
