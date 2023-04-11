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
  VoidCallback onTap,
) =>
    Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  if (count != null) Text(count.toString())
                ],
              ),
              const Divider(),
              Text(
                label.desc,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
