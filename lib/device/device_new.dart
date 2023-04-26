import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "../generated/l10n.dart";
import "../me/settings/providers.dart";
import "device.dart";
import "fake_device.dart";

part "device_new.g.dart";

@cwidget
Widget _deviceNew(BuildContext context, WidgetRef ref) {
  final s = S.of(context);

  final fakeDeviceOn = ref.watch(fakeDeviceOnProvider);

  return Column(
    children: [
      ListTile(
        leading: const CircularProgressIndicator(),
        title: Text(s.bluetoothSearching),
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
            title: Text(fakeDevice.name),
            subtitle: Text(fakeDevice.model),
            onTap: () async =>
                ref.read(currentDeviceProvider.notifier).set(fakeDevice),
          ),
        ),
      ],
    );

@swidget
Widget __noDevice(BuildContext context) {
  final s = S.of(context);

  return Center(
    child: Text(
      s.noDeviceFound,
      style: Theme.of(context).textTheme.headlineLarge,
    ),
  );
}
