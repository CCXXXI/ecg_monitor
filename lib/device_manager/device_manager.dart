import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "../utils/constants/strings.dart" as str;
import "device/device.dart";
import "device_new.dart";

part "device_manager.g.dart";

@cwidget
Widget _deviceManager(BuildContext context, WidgetRef ref) {
  final device = ref.watch(currentDeviceProvider);

  if (device == null) {
    return const DeviceNew();
  }

  final rssi = ref.watch(rssiProvider);
  final battery = ref.watch(batteryProvider);
  final connected = ref.watch(connectedProvider).valueOrNull ?? false;

  return ListView(
    children: [
      ListTile(
        leading: const Icon(Icons.device_hub_outlined),
        title: Text(device.name),
        subtitle: Text(device.model),
      ),
      if (connected)
        ListTile(
          leading: const Icon(Icons.bluetooth_connected_outlined),
          title: const Text(str.bluetoothConnected),
          subtitle: rssi.whenOrNull(
            data: (r) => Text(
              "${str.bluetoothRssi} $r ${str.bluetoothRssiUnit}",
            ),
          ),
        )
      else
        const ListTile(
          leading: Icon(Icons.bluetooth_disabled_outlined),
          title: Text(str.bluetoothDisconnected),
        ),
      if (connected)
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
              loading: () => str.batteryUnknown,
              error: (e, s) => str.batteryUnknown,
              data: (b) => "${str.battery} $b%",
            ),
          ),
        ),
      ListTile(
        leading: const Icon(Icons.close_outlined),
        title: const Text(str.disconnectDevice),
        onTap: () async => ref.read(currentDeviceProvider.notifier).set(null),
      ),
    ],
  );
}
