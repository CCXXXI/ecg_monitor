// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class RealTimeChart extends ConsumerWidget {
  const RealTimeChart({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _realTimeChart(
        _context,
        _ref,
      );
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$refreshIntervalMsHash() => r'27f5135c481d4fad5dec0b9fbdeb142075fe35ea';

/// See also [_refreshIntervalMs].
@ProviderFor(_refreshIntervalMs)
final _refreshIntervalMsProvider = AutoDisposeProvider<double>.internal(
  _refreshIntervalMs,
  name: r'_refreshIntervalMsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$refreshIntervalMsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _RefreshIntervalMsRef = AutoDisposeProviderRef<double>;
String _$pointsHash() => r'3f60bb2a7fb797bc913c0cb193534f15eeff71f1';

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

abstract class _$Points extends BuildlessAutoDisposeNotifier<List<FlSpot>> {
  late final int index;

  List<FlSpot> build(
    int index,
  );
}

/// See also [_Points].
@ProviderFor(_Points)
const _pointsProvider = _PointsFamily();

/// See also [_Points].
class _PointsFamily extends Family<List<FlSpot>> {
  /// See also [_Points].
  const _PointsFamily();

  /// See also [_Points].
  _PointsProvider call(
    int index,
  ) {
    return _PointsProvider(
      index,
    );
  }

  @override
  _PointsProvider getProviderOverride(
    covariant _PointsProvider provider,
  ) {
    return call(
      provider.index,
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

/// See also [_Points].
class _PointsProvider
    extends AutoDisposeNotifierProviderImpl<_Points, List<FlSpot>> {
  /// See also [_Points].
  _PointsProvider(
    this.index,
  ) : super.internal(
          () => _Points()..index = index,
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

  @override
  bool operator ==(Object other) {
    return other is _PointsProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  List<FlSpot> runNotifierBuild(
    covariant _Points notifier,
  ) {
    return notifier.build(
      index,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
