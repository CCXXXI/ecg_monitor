// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$boolHash() => r'4c1e9992bd799be167826d6d0115108c3d07eb0d';

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

abstract class _$Bool extends BuildlessAutoDisposeNotifier<bool> {
  late final String key;
  late final bool defaultValue;

  bool build(
    String key,
    bool defaultValue,
  );
}

/// See also [_Bool].
@ProviderFor(_Bool)
const _boolProvider = _BoolFamily();

/// See also [_Bool].
class _BoolFamily extends Family<bool> {
  /// See also [_Bool].
  const _BoolFamily();

  /// See also [_Bool].
  _BoolProvider call(
    String key,
    bool defaultValue,
  ) {
    return _BoolProvider(
      key,
      defaultValue,
    );
  }

  @override
  _BoolProvider getProviderOverride(
    covariant _BoolProvider provider,
  ) {
    return call(
      provider.key,
      provider.defaultValue,
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
  String? get name => r'_boolProvider';
}

/// See also [_Bool].
class _BoolProvider extends AutoDisposeNotifierProviderImpl<_Bool, bool> {
  /// See also [_Bool].
  _BoolProvider(
    this.key,
    this.defaultValue,
  ) : super.internal(
          () => _Bool()
            ..key = key
            ..defaultValue = defaultValue,
          from: _boolProvider,
          name: r'_boolProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$boolHash,
          dependencies: _BoolFamily._dependencies,
          allTransitiveDependencies: _BoolFamily._allTransitiveDependencies,
        );

  final String key;
  final bool defaultValue;

  @override
  bool operator ==(Object other) {
    return other is _BoolProvider &&
        other.key == key &&
        other.defaultValue == defaultValue;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, defaultValue.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  bool runNotifierBuild(
    covariant _Bool notifier,
  ) {
    return notifier.build(
      key,
      defaultValue,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
