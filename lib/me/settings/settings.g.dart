// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$monitorSettingsHash() => r'd02d39155f8e91db11433de19b845d3fd7807239';

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
String _$autoUploadOnHash() => r'1bea856b1cc047c2c990f62b434b336262af73a3';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$AutoUploadOn extends BuildlessAutoDisposeNotifier<bool> {
  late final String prefix;

  bool build(
    String prefix,
  );
}

/// See also [AutoUploadOn].
@ProviderFor(AutoUploadOn)
const autoUploadOnProvider = AutoUploadOnFamily();

/// See also [AutoUploadOn].
class AutoUploadOnFamily extends Family<bool> {
  /// See also [AutoUploadOn].
  const AutoUploadOnFamily();

  /// See also [AutoUploadOn].
  AutoUploadOnProvider call(
    String prefix,
  ) {
    return AutoUploadOnProvider(
      prefix,
    );
  }

  @override
  AutoUploadOnProvider getProviderOverride(
    covariant AutoUploadOnProvider provider,
  ) {
    return call(
      provider.prefix,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'autoUploadOnProvider';
}

/// See also [AutoUploadOn].
class AutoUploadOnProvider
    extends AutoDisposeNotifierProviderImpl<AutoUploadOn, bool> {
  /// See also [AutoUploadOn].
  AutoUploadOnProvider(
    this.prefix,
  ) : super.internal(
          () => AutoUploadOn()..prefix = prefix,
          from: autoUploadOnProvider,
          name: r'autoUploadOnProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$autoUploadOnHash,
          dependencies: AutoUploadOnFamily._dependencies,
          allTransitiveDependencies:
              AutoUploadOnFamily._allTransitiveDependencies,
        );

  final String prefix;

  @override
  bool operator ==(Object other) {
    return other is AutoUploadOnProvider && other.prefix == prefix;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, prefix.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  bool runNotifierBuild(
    covariant AutoUploadOn notifier,
  ) {
    return notifier.build(
      prefix,
    );
  }
}

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
String _$loggerLevelHash() => r'd45834a329b8245628eb85b4c01d64dc75a62362';

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
