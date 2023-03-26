import "package:animations/animations.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../utils/database.dart";
import "data_types.dart";
import "label_details.dart";

part "analytics.g.dart";

@riverpod
Future<int> _labelCount(_LabelCountRef ref, Label label) async =>
    labelCount(label);

@cwidget
Widget analytics(BuildContext context, WidgetRef ref) {
  final backgroundColor = Theme.of(context).colorScheme.background;

  return ListView(
    children: [
      for (final label in Label.values)
        OpenContainer(
          closedColor: backgroundColor,
          closedElevation: 0,
          closedBuilder: (_, __) => ListTile(
            title: Text(label.name),
            trailing: ref.watch(_labelCountProvider(label)).maybeWhen(
                  data: (cnt) => Text(cnt.toString()),
                  orElse: CircularProgressIndicator.new,
                ),
          ),
          openColor: backgroundColor,
          openBuilder: (_, __) => LabelDetails(label),
          useRootNavigator: true,
        ),
    ],
  );
}
