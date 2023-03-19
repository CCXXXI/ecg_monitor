import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";

import "../../device_manager/device.dart";
import "../../generated/l10n.dart";
import "heart_rate/heart_rate_stub.dart"
    if (dart.library.io) "heart_rate/heart_rate.dart";
import "real_time_chart/real_time_chart.dart";

part "real_time.g.dart";

@cwidget
Widget _realTime(BuildContext context, WidgetRef ref) {
  final s = S.of(context);

  final deviceAvailable = ref.watch(connectedProvider).value ?? false;
  if (!deviceAvailable) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          s.deviceNotConnected,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 16),
        OutlinedButton(
          child: Text(s.deviceManager),
          onPressed: () => context.go("/device_manager"),
        ),
      ],
    );
  }

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
