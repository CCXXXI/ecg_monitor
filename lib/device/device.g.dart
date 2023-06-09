// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$batteryHash() => r'd011c05bf7bb23f1a99136fa9e2a1262b02d61d4';

/// See also [battery].
@ProviderFor(battery)
final batteryProvider = AutoDisposeStreamProvider<int>.internal(
  battery,
  name: r'batteryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$batteryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BatteryRef = AutoDisposeStreamProviderRef<int>;
String _$connectionStateHash() => r'0a3ebff933e63c810d22bee518bc34fe3bbcebbf';

/// See also [connectionState].
@ProviderFor(connectionState)
final connectionStateProvider =
    AutoDisposeStreamProvider<DeviceConnectionState>.internal(
  connectionState,
  name: r'connectionStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$connectionStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ConnectionStateRef
    = AutoDisposeStreamProviderRef<DeviceConnectionState>;
String _$ecgHash() => r'9b693b804614294fe010d8c1507cad41e4d86695';

/// See also [ecg].
@ProviderFor(ecg)
final ecgProvider = AutoDisposeStreamProvider<EcgData>.internal(
  ecg,
  name: r'ecgProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$ecgHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef EcgRef = AutoDisposeStreamProviderRef<EcgData>;
String _$currentDeviceHash() => r'c30d92a24e6280eb7ba4c8cd4fca5196c6e3f33c';

/// See also [CurrentDevice].
@ProviderFor(CurrentDevice)
final currentDeviceProvider =
    AutoDisposeNotifierProvider<CurrentDevice, Device?>.internal(
  CurrentDevice.new,
  name: r'currentDeviceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentDeviceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentDevice = AutoDisposeNotifier<Device?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
