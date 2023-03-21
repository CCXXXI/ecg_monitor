import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";

import "../../device_manager/device.dart";
import "../../generated/l10n.dart";
import "chart.dart";
import "heart_rate/heart_rate.dart";

part "real_time.g.dart";

@swidget
Widget __deviceNotAvailable(BuildContext context) {
  final s = S.of(context);

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Text(
          s.deviceNotConnected,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      OutlinedButton(
        child: Text(s.deviceManager),
        onPressed: () => context.go("/device_manager"),
      ),
    ],
  );
}

@cwidget
Widget _realTime(BuildContext context, WidgetRef ref) {
  final deviceAvailable = ref.watch(connectedProvider).value ?? true;
  if (!deviceAvailable) {
    return const _DeviceNotAvailable();
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
