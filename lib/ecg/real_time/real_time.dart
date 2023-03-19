import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "heart_rate/heart_rate_stub.dart"
    if (dart.library.io) "heart_rate/heart_rate.dart";
import "real_time_chart/real_time_chart.dart";

part "real_time.g.dart";

@swidget
Widget _realTime(BuildContext context) {
  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

  if (isPortrait) {
    return Column(
      children: const [
        Expanded(child: HeartRateWidget()),
        Expanded(flex: 5, child: RealTimeChart()),
      ],
    );
  } else {
    return const RealTimeChart();
  }
}
