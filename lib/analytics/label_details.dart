import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";
import "package:isar/isar.dart";

import "../utils/database.dart";
import "data_types.dart";

part "label_details.g.dart";

List<DateTime> _labelTimes(Label label) => isar.beats
    .where()
    .labelEqualTo(label)
    .findAllSync()
    .map((e) => e.toBeatData().time)
    .toList();

@swidget
Widget _labelDetails(BuildContext context, Label label) {
  final times = _labelTimes(label);

  return Scaffold(
    appBar: AppBar(title: Text(label.name)),
    body: ListView(
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
  );
}
