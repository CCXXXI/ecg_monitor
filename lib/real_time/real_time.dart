import "package:flutter/material.dart";

import "chart.dart";

class RealTime extends StatelessWidget {
  const RealTime({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    if (isPortrait) {
      return Column(
        children: const [
          Expanded(child: Placeholder()),
          Expanded(child: Chart()),
          Expanded(child: Placeholder()),
        ],
      );
    } else {
      return const Chart();
    }
  }
}
