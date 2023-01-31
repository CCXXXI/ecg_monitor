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

String _$_IndexHash() => r'1a8399ee328692fc6ea55064051535d0e81b089b';

/// See also [_Index].
final _indexProvider = AutoDisposeNotifierProvider<_Index, int>(
  _Index.new,
  name: r'_indexProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$_IndexHash,
);
typedef _IndexRef = AutoDisposeNotifierProviderRef<int>;

abstract class _$Index extends AutoDisposeNotifier<int> {
  @override
  int build();
}

String _$_monitorClearHash() => r'70444b26ee37e75d5e7ff19efea7754bdf0b9da2';

/// See also [_monitorClear].
final _monitorClearProvider = AutoDisposeProvider<void>(
  _monitorClear,
  name: r'_monitorClearProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$_monitorClearHash,
);
typedef _MonitorClearRef = AutoDisposeProviderRef<void>;
