import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "../me/settings/providers.dart";
import "../utils/constants/strings.dart" as str;
import "device.dart";
import "fake_device.dart";

part "device_new.g.dart";

@cwidget
Widget _deviceNew(BuildContext context, WidgetRef ref) {
  final fakeDeviceOn = ref.watch(fakeDeviceOnProvider);

  return Column(
    children: [
      const ListTile(
        leading: CircularProgressIndicator(),
        title: Text(str.bluetoothSearching),
      ),
      const Divider(),
      Expanded(
        child: fakeDeviceOn ? const _DeviceList() : const _NoDevice(),
      )
    ],
  );
}

@cwidget
Widget __deviceList(BuildContext context, WidgetRef ref) => ListView(
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

@swidget
Widget __noDevice(BuildContext context) => Center(
      child: Text(
        str.noDeviceFound,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
