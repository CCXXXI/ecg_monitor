import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "../mine/settings.dart";
import "../utils/constants/strings.dart" as str;
import "device.dart";

class DeviceNew extends ConsumerWidget {
  const DeviceNew({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fakeDevice = ref.watch(fakeDeviceProvider);

    return Column(
      children: [
        const ListTile(
          leading: CircularProgressIndicator(),
          title: Text(str.bluetoothSearching),
        ),
        const Divider(),
        Expanded(
          child: fakeDevice ? const DeviceList() : const NoDevice(),
        )
      ],
    );
  }
}

class DeviceList extends ConsumerWidget {
  const DeviceList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => ListView(
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.bluetooth_searching_outlined),
              title: const Text(str.fakeDevice),
              subtitle: const Text(str.fakeDeviceModel),
              onTap: () async =>
                  ref.read(currentDeviceProvider.notifier).set(fakeDevice),
            ),
          ),
        ],
      );
}

class NoDevice extends StatelessWidget {
  const NoDevice({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          str.noDeviceFound,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      );
}
