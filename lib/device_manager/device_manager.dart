import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "../utils/constants/strings.dart" as str;
import "device.dart";

class DeviceManager extends ConsumerWidget {
  const DeviceManager({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final device = ref.watch(deviceProvider);

    if (device == null) {
      return const Placeholder();
    }

    final rssi = ref.watch(rssiProvider);
    final battery = ref.watch(batteryProvider);

    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.device_hub_outlined),
          title: Text(device.name),
          subtitle: Text(device.model),
        ),
        ListTile(
          leading: const Icon(Icons.bluetooth_connected_outlined),
          title: const Text(str.bluetoothConnected),
          subtitle: rssi.whenOrNull(
            data: (r) => Text(
              "${str.bluetoothRssi} $r ${str.bluetoothRssiUnit}",
            ),
          ),
        ),
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
        const ListTile(
          leading: Icon(Icons.not_interested_outlined),
          title: Text("解绑设备"),
        ),
      ],
    );
  }
}
