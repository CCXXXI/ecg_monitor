import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:quiver/time.dart";

import "chart.dart";
import "controller.dart";
import "start_provider.dart";

part "history.g.dart";

@cwidget
Widget history(WidgetRef ref, DateTime time) {
  startTime =
      time.subtract(aSecond * .25).copyWith(millisecond: 0, microsecond: 0);

  return Column(
    children: const [
      Expanded(child: HistoryChart()),
      HistoryController(),
    ],
  );
}
