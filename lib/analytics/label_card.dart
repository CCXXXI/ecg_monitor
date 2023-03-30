import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "data_types.dart";

part "label_card.g.dart";

@swidget
Widget _labelCard(Label label, int? count) => ListTile(
      title: Text(label.name),
      subtitle: Text(label.desc),
      isThreeLine: true,
      trailing: count != null ? Text(count.toString()) : null,
    );
