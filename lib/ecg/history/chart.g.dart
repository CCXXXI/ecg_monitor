// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class HistoryChart extends ConsumerWidget {
  const HistoryChart({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _historyChart(
        _context,
        _ref,
      );
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ecgDataHash() => r'3c172186e8b182a703dffd3687df821b59912a60';

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

typedef _EcgDataRef = AutoDisposeProviderRef<List<EcgData>>;

/// See also [_ecgData].
@ProviderFor(_ecgData)
const _ecgDataProvider = _EcgDataFamily();

/// See also [_ecgData].
class _EcgDataFamily extends Family<List<EcgData>> {
  /// See also [_ecgData].
  const _EcgDataFamily();

  /// See also [_ecgData].
  _EcgDataProvider call(
    Duration duration,
  ) {
    return _EcgDataProvider(
      duration,
    );
  }

  @override
  _EcgDataProvider getProviderOverride(
    covariant _EcgDataProvider provider,
  ) {
    return call(
      provider.duration,
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
  String? get name => r'_ecgDataProvider';
}

/// See also [_ecgData].
class _EcgDataProvider extends AutoDisposeProvider<List<EcgData>> {
  /// See also [_ecgData].
  _EcgDataProvider(
    this.duration,
  ) : super.internal(
          (ref) => _ecgData(
            ref,
            duration,
          ),
          from: _ecgDataProvider,
          name: r'_ecgDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ecgDataHash,
          dependencies: _EcgDataFamily._dependencies,
          allTransitiveDependencies: _EcgDataFamily._allTransitiveDependencies,
        );

  final Duration duration;

  @override
  bool operator ==(Object other) {
    return other is _EcgDataProvider && other.duration == duration;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, duration.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$pointsHash() => r'183e04448254aee72ebe19d0f9bb9ffd6fd106fe';
typedef _PointsRef = AutoDisposeProviderRef<List<FlSpot>>;

/// See also [_points].
@ProviderFor(_points)
const _pointsProvider = _PointsFamily();

/// See also [_points].
class _PointsFamily extends Family<List<FlSpot>> {
  /// See also [_points].
  const _PointsFamily();

  /// See also [_points].
  _PointsProvider call(
    int index,
    Duration duration,
  ) {
    return _PointsProvider(
      index,
      duration,
    );
  }

  @override
  _PointsProvider getProviderOverride(
    covariant _PointsProvider provider,
  ) {
    return call(
      provider.index,
      provider.duration,
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
  String? get name => r'_pointsProvider';
}

/// See also [_points].
class _PointsProvider extends AutoDisposeProvider<List<FlSpot>> {
  /// See also [_points].
  _PointsProvider(
    this.index,
    this.duration,
  ) : super.internal(
          (ref) => _points(
            ref,
            index,
            duration,
          ),
          from: _pointsProvider,
          name: r'_pointsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pointsHash,
          dependencies: _PointsFamily._dependencies,
          allTransitiveDependencies: _PointsFamily._allTransitiveDependencies,
        );

  final int index;
  final Duration duration;

  @override
  bool operator ==(Object other) {
    return other is _PointsProvider &&
        other.index == index &&
        other.duration == duration;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);
    hash = _SystemHash.combine(hash, duration.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
