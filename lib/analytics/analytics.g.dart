// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class Analytics extends ConsumerWidget {
  const Analytics({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      analytics(
        _context,
        _ref,
      );
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$labelCountHash() => r'003554523900bfdd7c22cc541cdc81a2e237713e';

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

typedef _LabelCountRef = AutoDisposeFutureProviderRef<int>;

/// See also [_labelCount].
@ProviderFor(_labelCount)
const _labelCountProvider = _LabelCountFamily();

/// See also [_labelCount].
class _LabelCountFamily extends Family<AsyncValue<int>> {
  /// See also [_labelCount].
  const _LabelCountFamily();

  /// See also [_labelCount].
  _LabelCountProvider call(
    Label label,
  ) {
    return _LabelCountProvider(
      label,
    );
  }

  @override
  _LabelCountProvider getProviderOverride(
    covariant _LabelCountProvider provider,
  ) {
    return call(
      provider.label,
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
  String? get name => r'_labelCountProvider';
}

/// See also [_labelCount].
class _LabelCountProvider extends AutoDisposeFutureProvider<int> {
  /// See also [_labelCount].
  _LabelCountProvider(
    this.label,
  ) : super.internal(
          (ref) => _labelCount(
            ref,
            label,
          ),
          from: _labelCountProvider,
          name: r'_labelCountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$labelCountHash,
          dependencies: _LabelCountFamily._dependencies,
          allTransitiveDependencies:
              _LabelCountFamily._allTransitiveDependencies,
        );

  final Label label;

  @override
  bool operator ==(Object other) {
    return other is _LabelCountProvider && other.label == label;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, label.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
