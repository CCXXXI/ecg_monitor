import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "../utils/constants.dart";
import "device.dart";

class DeviceManagerView extends ConsumerWidget {
  const DeviceManagerView({super.key});

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
          leading: const Icon(Icons.device_hub),
          title: Text(device.name),
          subtitle: Text(device.model),
        ),
        ListTile(
          leading: const Icon(Icons.bluetooth_connected),
          title: const Text(Strings.bluetoothConnected),
          subtitle: rssi.whenOrNull(
            data: (r) => Text(
              "${Strings.bluetoothRssi} $r ${Strings.bluetoothRssiUnit}",
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            battery.whenOrNull(
              loading: () => Icons.battery_unknown,
              data: (b) => [
                Icons.battery_0_bar,
                Icons.battery_1_bar,
                Icons.battery_2_bar,
                Icons.battery_3_bar,
                Icons.battery_4_bar,
                Icons.battery_5_bar,
                Icons.battery_6_bar,
                Icons.battery_full,
              ][b * 7 ~/ 100],
            ),
          ),
          title: Text(
            battery.when(
              loading: () => Strings.batteryUnknown,
              error: (e, s) => Strings.batteryUnknown,
              data: (b) => "${Strings.battery} $b%",
            ),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.not_interested),
          title: Text("解绑设备"),
        ),
      ],
    );
  }
}
