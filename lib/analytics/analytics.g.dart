// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class Analytics extends ConsumerWidget {
  const Analytics(
    this.start,
    this.end, {
    Key? key,
  }) : super(key: key);

  final DateTime start;

  final DateTime end;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _analytics(
        _context,
        _ref,
        start,
        end,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<DateTime>('start', start));
    properties.add(DiagnosticsProperty<DateTime>('end', end));
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$labelCountsHash() => r'7a503edb071c351295acfb41262c6d6684379d35';

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

typedef _LabelCountsRef = AutoDisposeFutureProviderRef<Map<Label, int>>;

/// See also [_labelCounts].
@ProviderFor(_labelCounts)
const _labelCountsProvider = _LabelCountsFamily();

/// See also [_labelCounts].
class _LabelCountsFamily extends Family<AsyncValue<Map<Label, int>>> {
  /// See also [_labelCounts].
  const _LabelCountsFamily();

  /// See also [_labelCounts].
  _LabelCountsProvider call(
    DateTime start,
    DateTime end,
  ) {
    return _LabelCountsProvider(
      start,
      end,
    );
  }

  @override
  _LabelCountsProvider getProviderOverride(
    covariant _LabelCountsProvider provider,
  ) {
    return call(
      provider.start,
      provider.end,
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
  String? get name => r'_labelCountsProvider';
}

/// See also [_labelCounts].
class _LabelCountsProvider extends AutoDisposeFutureProvider<Map<Label, int>> {
  /// See also [_labelCounts].
  _LabelCountsProvider(
    this.start,
    this.end,
  ) : super.internal(
          (ref) => _labelCounts(
            ref,
            start,
            end,
          ),
          from: _labelCountsProvider,
          name: r'_labelCountsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$labelCountsHash,
          dependencies: _LabelCountsFamily._dependencies,
          allTransitiveDependencies:
              _LabelCountsFamily._allTransitiveDependencies,
        );

  final DateTime start;
  final DateTime end;

  @override
  bool operator ==(Object other) {
    return other is _LabelCountsProvider &&
        other.start == start &&
        other.end == end;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, start.hashCode);
    hash = _SystemHash.combine(hash, end.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
