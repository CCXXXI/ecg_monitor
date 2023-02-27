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

String _$doubleHash() => r'36af47ecb46118f5b91becb93b48921d7994ddff';

abstract class _$Double extends BuildlessAutoDisposeNotifier<double> {
  late final String key;
  late final double defaultValue;

  double build(
    String key,
    double defaultValue,
  );
}

/// See also [_Double].
@ProviderFor(_Double)
const _doubleProvider = _DoubleFamily();

/// See also [_Double].
class _DoubleFamily extends Family<double> {
  /// See also [_Double].
  const _DoubleFamily();

  /// See also [_Double].
  _DoubleProvider call(
    String key,
    double defaultValue,
  ) {
    return _DoubleProvider(
      key,
      defaultValue,
    );
  }

  @override
  _DoubleProvider getProviderOverride(
    covariant _DoubleProvider provider,
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
  String? get name => r'_doubleProvider';
}

/// See also [_Double].
class _DoubleProvider extends AutoDisposeNotifierProviderImpl<_Double, double> {
  /// See also [_Double].
  _DoubleProvider(
    this.key,
    this.defaultValue,
  ) : super.internal(
          () => _Double()
            ..key = key
            ..defaultValue = defaultValue,
          from: _doubleProvider,
          name: r'_doubleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$doubleHash,
          dependencies: _DoubleFamily._dependencies,
          allTransitiveDependencies: _DoubleFamily._allTransitiveDependencies,
        );

  final String key;
  final double defaultValue;

  @override
  bool operator ==(Object other) {
    return other is _DoubleProvider &&
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
  double runNotifierBuild(
    covariant _Double notifier,
  ) {
    return notifier.build(
      key,
      defaultValue,
    );
  }
}

String _$colorHash() => r'b2dfaf6b1c78d1a692beabc288b68bea808d861d';

abstract class _$Color extends BuildlessAutoDisposeNotifier<Color> {
  late final String key;
  late final Color defaultValue;

  Color build(
    String key,
    Color defaultValue,
  );
}

/// See also [_Color].
@ProviderFor(_Color)
const _colorProvider = _ColorFamily();

/// See also [_Color].
class _ColorFamily extends Family<Color> {
  /// See also [_Color].
  const _ColorFamily();

  /// See also [_Color].
  _ColorProvider call(
    String key,
    Color defaultValue,
  ) {
    return _ColorProvider(
      key,
      defaultValue,
    );
  }

  @override
  _ColorProvider getProviderOverride(
    covariant _ColorProvider provider,
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
  String? get name => r'_colorProvider';
}

/// See also [_Color].
class _ColorProvider extends AutoDisposeNotifierProviderImpl<_Color, Color> {
  /// See also [_Color].
  _ColorProvider(
    this.key,
    this.defaultValue,
  ) : super.internal(
          () => _Color()
            ..key = key
            ..defaultValue = defaultValue,
          from: _colorProvider,
          name: r'_colorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$colorHash,
          dependencies: _ColorFamily._dependencies,
          allTransitiveDependencies: _ColorFamily._allTransitiveDependencies,
        );

  final String key;
  final Color defaultValue;

  @override
  bool operator ==(Object other) {
    return other is _ColorProvider &&
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
  Color runNotifierBuild(
    covariant _Color notifier,
  ) {
    return notifier.build(
      key,
      defaultValue,
    );
  }
}

String _$lineTypeHash() => r'7a372dd3e984bc8234dbe6efa8faf6b7d783ced2';

abstract class _$LineType extends BuildlessAutoDisposeNotifier<LineType> {
  late final String key;
  late final LineType defaultValue;

  LineType build(
    String key,
    LineType defaultValue,
  );
}

/// See also [_LineType].
@ProviderFor(_LineType)
const _lineTypeProvider = _LineTypeFamily();

/// See also [_LineType].
class _LineTypeFamily extends Family<LineType> {
  /// See also [_LineType].
  const _LineTypeFamily();

  /// See also [_LineType].
  _LineTypeProvider call(
    String key,
    LineType defaultValue,
  ) {
    return _LineTypeProvider(
      key,
      defaultValue,
    );
  }

  @override
  _LineTypeProvider getProviderOverride(
    covariant _LineTypeProvider provider,
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
  String? get name => r'_lineTypeProvider';
}

/// See also [_LineType].
class _LineTypeProvider
    extends AutoDisposeNotifierProviderImpl<_LineType, LineType> {
  /// See also [_LineType].
  _LineTypeProvider(
    this.key,
    this.defaultValue,
  ) : super.internal(
          () => _LineType()
            ..key = key
            ..defaultValue = defaultValue,
          from: _lineTypeProvider,
          name: r'_lineTypeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lineTypeHash,
          dependencies: _LineTypeFamily._dependencies,
          allTransitiveDependencies: _LineTypeFamily._allTransitiveDependencies,
        );

  final String key;
  final LineType defaultValue;

  @override
  bool operator ==(Object other) {
    return other is _LineTypeProvider &&
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
  LineType runNotifierBuild(
    covariant _LineType notifier,
  ) {
    return notifier.build(
      key,
      defaultValue,
    );
  }
}

String _$realTimeChartSettingsHash() =>
    r'f3c7afa77cf75a161730f0fe59aad995fd33a4a3';

/// See also [RealTimeChartSettings].
@ProviderFor(RealTimeChartSettings)
final realTimeChartSettingsProvider = AutoDisposeNotifierProvider<
    RealTimeChartSettings, ChartSettingsData>.internal(
  RealTimeChartSettings.new,
  name: r'realTimeChartSettingsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$realTimeChartSettingsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RealTimeChartSettings = AutoDisposeNotifier<ChartSettingsData>;

String _$realTimeChartSettingsSetterHash() =>
    r'56fc031db1dc5186184c55fc3723c5c49d094894';

/// See also [_RealTimeChartSettingsSetter].
@ProviderFor(_RealTimeChartSettingsSetter)
final _realTimeChartSettingsSetterProvider =
    AutoDisposeNotifierProvider<_RealTimeChartSettingsSetter, void>.internal(
  _RealTimeChartSettingsSetter.new,
  name: r'_realTimeChartSettingsSetterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$realTimeChartSettingsSetterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RealTimeChartSettingsSetter = AutoDisposeNotifier<void>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
