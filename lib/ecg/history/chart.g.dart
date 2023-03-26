// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class HistoryChart extends ConsumerWidget {
  const HistoryChart(
    this.time, {
    Key? key,
  }) : super(key: key);

  final DateTime time;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _historyChart(
        _context,
        _ref,
        time,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<DateTime>('time', time));
  }
}

class _NoData extends StatelessWidget {
  const _NoData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => __noData(_context);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ecgDataHash() => r'a2ca39862bc4fa3938852936168a9003f14a294c';

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

typedef _EcgDataRef = AutoDisposeFutureProviderRef<List<EcgData>>;

/// See also [_ecgData].
@ProviderFor(_ecgData)
const _ecgDataProvider = _EcgDataFamily();

/// See also [_ecgData].
class _EcgDataFamily extends Family<AsyncValue<List<EcgData>>> {
  /// See also [_ecgData].
  const _EcgDataFamily();

  /// See also [_ecgData].
  _EcgDataProvider call(
    DateTime time,
    Duration duration,
  ) {
    return _EcgDataProvider(
      time,
      duration,
    );
  }

  @override
  _EcgDataProvider getProviderOverride(
    covariant _EcgDataProvider provider,
  ) {
    return call(
      provider.time,
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
class _EcgDataProvider extends AutoDisposeFutureProvider<List<EcgData>> {
  /// See also [_ecgData].
  _EcgDataProvider(
    this.time,
    this.duration,
  ) : super.internal(
          (ref) => _ecgData(
            ref,
            time,
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

  final DateTime time;
  final Duration duration;

  @override
  bool operator ==(Object other) {
    return other is _EcgDataProvider &&
        other.time == time &&
        other.duration == duration;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, time.hashCode);
    hash = _SystemHash.combine(hash, duration.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$beatDataHash() => r'f6ae17bf7a76fb7d686731fe4b7de98c2b2daf37';
typedef _BeatDataRef = AutoDisposeFutureProviderRef<List<BeatData>>;

/// See also [_beatData].
@ProviderFor(_beatData)
const _beatDataProvider = _BeatDataFamily();

/// See also [_beatData].
class _BeatDataFamily extends Family<AsyncValue<List<BeatData>>> {
  /// See also [_beatData].
  const _BeatDataFamily();

  /// See also [_beatData].
  _BeatDataProvider call(
    DateTime time,
    Duration duration,
  ) {
    return _BeatDataProvider(
      time,
      duration,
    );
  }

  @override
  _BeatDataProvider getProviderOverride(
    covariant _BeatDataProvider provider,
  ) {
    return call(
      provider.time,
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
  String? get name => r'_beatDataProvider';
}

/// See also [_beatData].
class _BeatDataProvider extends AutoDisposeFutureProvider<List<BeatData>> {
  /// See also [_beatData].
  _BeatDataProvider(
    this.time,
    this.duration,
  ) : super.internal(
          (ref) => _beatData(
            ref,
            time,
            duration,
          ),
          from: _beatDataProvider,
          name: r'_beatDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$beatDataHash,
          dependencies: _BeatDataFamily._dependencies,
          allTransitiveDependencies: _BeatDataFamily._allTransitiveDependencies,
        );

  final DateTime time;
  final Duration duration;

  @override
  bool operator ==(Object other) {
    return other is _BeatDataProvider &&
        other.time == time &&
        other.duration == duration;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, time.hashCode);
    hash = _SystemHash.combine(hash, duration.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
