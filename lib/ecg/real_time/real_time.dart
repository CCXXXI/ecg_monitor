import "package:flutter/material.dart";

import "heart_rate.dart";
import "real_time_chart.dart";

class RealTime extends StatelessWidget {
  const RealTime({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    if (isPortrait) {
      return Column(
        children: const [
          Expanded(child: HeartRate()),
          Expanded(child: RealTimeChart()),
          Expanded(child: Placeholder()),
        ],
      );
    } else {
      return const RealTimeChart();
    }
  }
}
