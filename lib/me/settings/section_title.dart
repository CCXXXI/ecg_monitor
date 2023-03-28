import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

part "section_title.g.dart";

@swidget
Widget _sectionTitle(BuildContext context, String title) {
  const padding = EdgeInsetsDirectional.fromSTEB(24, 24, 24, 10);
  final color = Theme.of(context).colorScheme.primary;
  final style = Theme.of(context).textTheme.labelLarge!.copyWith(color: color);

  return Padding(padding: padding, child: Text(title, style: style));
}
