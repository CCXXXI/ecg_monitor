// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$monitorSettingsHash() => r'8c788e380804c6d3d677e33e6eb4c7714ae6333e';

/// See also [MonitorSettings].
@ProviderFor(MonitorSettings)
final monitorSettingsProvider =
    AutoDisposeNotifierProvider<MonitorSettings, MonitorSettingGroup>.internal(
  MonitorSettings.new,
  name: r'monitorSettingsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$monitorSettingsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MonitorSettings = AutoDisposeNotifier<MonitorSettingGroup>;

String _$autoUploadOnHash() => r'e591db100a354cbdd87d595304f06d2ef7357360';

/// See also [AutoUploadOn].
@ProviderFor(AutoUploadOn)
final autoUploadOnProvider =
    AutoDisposeNotifierProvider<AutoUploadOn, bool>.internal(
  AutoUploadOn.new,
  name: r'autoUploadOnProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$autoUploadOnHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AutoUploadOn = AutoDisposeNotifier<bool>;
String _$fakeDeviceOnHash() => r'9700c2836d6e522fd88b398821ba59d32fb44f02';

/// See also [FakeDeviceOn].
@ProviderFor(FakeDeviceOn)
final fakeDeviceOnProvider =
    AutoDisposeNotifierProvider<FakeDeviceOn, bool>.internal(
  FakeDeviceOn.new,
  name: r'fakeDeviceOnProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fakeDeviceOnHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FakeDeviceOn = AutoDisposeNotifier<bool>;
String _$loggerLevelHash() => r'3dc7f79c8026e2c51232798edbcbfe4610ee5690';

/// See also [_LoggerLevel].
@ProviderFor(_LoggerLevel)
final _loggerLevelProvider =
    AutoDisposeNotifierProvider<_LoggerLevel, Level>.internal(
  _LoggerLevel.new,
  name: r'_loggerLevelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loggerLevelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoggerLevel = AutoDisposeNotifier<Level>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
