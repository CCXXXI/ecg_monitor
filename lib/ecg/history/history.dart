import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "chart.dart";
import "controller.dart";

part "history.g.dart";

@swidget
Widget history(DateTime time) => Column(
      children: [
        Expanded(child: HistoryChart(time)),
        HistoryController(time),
      ],
    );
