import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "chart.dart";
import "controller.dart";

part "history.g.dart";

@swidget
Widget history() => Column(
      children: const [
        Expanded(child: HistoryChart()),
        HistoryController(),
      ],
    );
