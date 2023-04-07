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
          child: Text("房性早搏共 124 次，占比 2.61%，在正常范围（< 10%）内。\n"
              "成对房早 13 次，房早二联律 15 次，房早三联律 2 次，短阵房速 8 阵，短阵房速最快心室率 112 次/分。\n"
              "房性早搏可在许多健康人中出现，极少引起症状。饮用咖啡、茶或酒精或者使用有些治疗感冒、花粉热或哮喘的药物都可能会引起房性早搏。\n"
              "以下是房性早搏出现的具体时间，可以点击查看对应时间的心电图。"),
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
