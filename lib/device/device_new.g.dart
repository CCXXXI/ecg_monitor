// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_new.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class DeviceNew extends ConsumerWidget {
  const DeviceNew({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _deviceNew(
        _context,
        _ref,
      );
}

class _DeviceList extends ConsumerWidget {
  const _DeviceList(
    this.devices, {
    Key? key,
  }) : super(key: key);

  final List<DiscoveredDevice> devices;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      __deviceList(
        _context,
        _ref,
        devices,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<List<DiscoveredDevice>>('devices', devices));
  }
}

class _NoDevice extends StatelessWidget {
  const _NoDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => __noDevice(_context);
}
