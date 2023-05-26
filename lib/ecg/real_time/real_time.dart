import "package:flutter/material.dart";
import "package:flutter_reactive_ble/flutter_reactive_ble.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "../../device/device.dart";
import "chart.dart";
import "device_not_available.dart";
import "heart_rate/heart_rate.dart";

part "real_time.g.dart";

@cwidget
Widget _realTime(BuildContext context, WidgetRef ref) {
  final deviceAvailable = ref.watch(connectionStateProvider).value !=
      DeviceConnectionState.disconnected;
  if (!deviceAvailable) {
    return const DeviceNotAvailable();
  }

  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

  if (isPortrait) {
    return const Column(
      children: [
        Expanded(child: HeartRateWidget()),
        Expanded(flex: 5, child: RealTimeChart()),
      ],
    );
  } else {
    return const RealTimeChart();
  }
}
