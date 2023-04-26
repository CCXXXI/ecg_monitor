import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_reactive_ble/flutter_reactive_ble.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "../generated/l10n.dart";
import "../me/settings/providers.dart";
import "bluetooth.dart";
import "device.dart";
import "fake_device.dart";

part "device_new.g.dart";

@cwidget
Widget _deviceNew(BuildContext context, WidgetRef ref) {
  final s = S.of(context);

  final devices = ref.watch(devicesProvider).valueOrNull ?? [];
  final fakeDeviceOn = ref.watch(fakeDeviceOnProvider);
  if (fakeDeviceOn) {
    devices.add(
      DiscoveredDevice(
        id: fakeDevice.id,
        name: fakeDevice.name,
        serviceData: const {},
        manufacturerData: Uint8List(0),
        rssi: -42,
        serviceUuids: const [],
      ),
    );
  }

  return Column(
    children: [
      ListTile(
        leading: const CircularProgressIndicator(),
        title: Text(s.bluetoothSearching),
      ),
      const Divider(),
      Expanded(
        child: devices.isEmpty ? const _NoDevice() : _DeviceList(devices),
      )
    ],
  );
}

@cwidget
Widget __deviceList(
  BuildContext context,
  WidgetRef ref,
  List<DiscoveredDevice> devices,
) {
  final s = S.of(context);

  return ListView(
    children: [
      for (final d in devices..sort((a, b) => b.rssi.compareTo(a.rssi)))
        ListTile(
          leading: const Icon(Icons.bluetooth_outlined),
          title: Text(d.name),
          subtitle: Text(d.id),
          onTap: () async =>
              ref.read(currentDeviceProvider.notifier).set(fakeDevice),
        ),
    ],
  );
}

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
