import "package:flutter/material.dart";

import "../../utils/constants/strings.dart" as str;

class HeartRate extends StatelessWidget {
  const HeartRate({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textBaseline: TextBaseline.ideographic,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            const Icon(Icons.favorite, size: 48, color: Colors.red),
            Text("60", style: Theme.of(context).textTheme.displayLarge),
            Text(
              str.heartRateUnit,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      );
}
