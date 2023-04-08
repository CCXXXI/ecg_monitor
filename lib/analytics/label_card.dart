import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "data_types.dart";

part "label_card.g.dart";

@swidget
Widget _labelCard(
  BuildContext context,
  Label label,
  int? count,
  int? total,
  void Function() onTap,
) =>
    ListTile(
      onTap: onTap,
      isThreeLine: true,
      title: Text(
        label.name +
            (count == null
                ? ""
                : count == 0
                    ? "  无"
                    : "  $count 次  "
                        "${(count / total! * 100).toStringAsFixed(2)}%"),
      ),
      subtitle: getFakeSubtitle(label),
      trailing: Text(
        "正常",
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: Colors.green[700]),
      ),
    );

Widget getFakeSubtitle(Label label) {
  switch (label) {
    case Label.sinusRhythm:
      return Wrap(
        children: const [
          Text(
            "参考值：占比 > 90%，平均心室率 60-100，无窦性停搏",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "平均心室率 80，最快130，最慢54；无窦性停搏",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      );
    case Label.atrialPrematureBeat:
      return Wrap(
        children: const [
          Text("参考值：占比 < 10%"),
          Text(
            "成对房早 13 次，房早二联律 15 次，房早三联律 2 次",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      );
    case Label.ventricularPreExcitation:
      return const Text("参考值：占比 < 3%");
  }
  return const Text("参考值：无");
}
