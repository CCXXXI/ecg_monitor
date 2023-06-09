import "package:flutter/material.dart";
import "package:flutter_reactive_ble/flutter_reactive_ble.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "../generated/l10n.dart";
import "device.dart";
import "device_new.dart";

part "manager.g.dart";

@cwidget
Widget _deviceManager(BuildContext context, WidgetRef ref) {
  final s = S.of(context);

  final device = ref.watch(currentDeviceProvider);

  if (device == null) {
    return const DeviceNew();
  }

  final battery = ref.watch(batteryProvider);
  final state = ref.watch(connectionStateProvider).valueOrNull ??
      DeviceConnectionState.disconnected;

  return ListView(
    children: [
      ListTile(
        leading: const Icon(Icons.device_hub_outlined),
        title: Text(device.name),
        subtitle: Text(device.model),
      ),
      state.toListTile(context),
      ListTile(
        leading: Icon(
          battery.whenOrNull(
            loading: () => Icons.battery_unknown_outlined,
            data: (b) => [
              Icons.battery_0_bar_outlined,
              Icons.battery_1_bar_outlined,
              Icons.battery_2_bar_outlined,
              Icons.battery_3_bar_outlined,
              Icons.battery_4_bar_outlined,
              Icons.battery_5_bar_outlined,
              Icons.battery_6_bar_outlined,
              Icons.battery_full_outlined,
            ][b * 7 ~/ 100],
          ),
        ),
        title: Text(
          battery.when(
            loading: () => s.batteryUnknown,
            error: (err, stack) => s.batteryUnknown,
            data: (b) => "${s.battery} $b%",
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.close_outlined),
        title: Text(s.disconnectDevice),
        onTap: () async => ref.read(currentDeviceProvider.notifier).set(null),
      ),
    ],
  );
}

extension on DeviceConnectionState {
  ListTile toListTile(BuildContext context) {
    final s = S.of(context);

    switch (this) {
      case DeviceConnectionState.connecting:
        return ListTile(
          leading: const CircularProgressIndicator(),
          title: Text(s.bluetoothConnecting),
        );
      case DeviceConnectionState.connected:
        return ListTile(
          leading: const Icon(Icons.bluetooth_connected_outlined),
          title: Text(s.bluetoothConnected),
        );
      case DeviceConnectionState.disconnecting:
      case DeviceConnectionState.disconnected:
        return ListTile(
          leading: const Icon(Icons.bluetooth_disabled_outlined),
          title: Text(s.bluetoothDisconnected),
        );
    }
  }
}
