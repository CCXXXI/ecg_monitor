// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String _$_HomeModelHash() => r'ca760783acae059820bffb3db250db2004fee4ff';

/// See also [_HomeModel].
final _homeModelProvider = AutoDisposeNotifierProvider<_HomeModel, int>(
  _HomeModel.new,
  name: r'_homeModelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$_HomeModelHash,
);
typedef _HomeModelRef = AutoDisposeNotifierProviderRef<int>;

abstract class _$HomeModel extends AutoDisposeNotifier<int> {
  @override
  int build();
}

String _$_monitorClearHash() => r'1e14b401f46351aaa87c3e97242b93a2ce83fb69';

/// See also [_monitorClear].
final _monitorClearProvider = AutoDisposeProvider<void>(
  _monitorClear,
  name: r'_monitorClearProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$_monitorClearHash,
);
typedef _MonitorClearRef = AutoDisposeProviderRef<void>;
