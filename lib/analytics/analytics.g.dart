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
      analytics(
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

String _$labelCountHash() => r'c036ac68ef1fa5166c8fb8fe52f3e4c66bde0674';

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
    DateTime start,
    DateTime end,
  ) {
    return _LabelCountProvider(
      label,
      start,
      end,
    );
  }

  @override
  _LabelCountProvider getProviderOverride(
    covariant _LabelCountProvider provider,
  ) {
    return call(
      provider.label,
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
  String? get name => r'_labelCountProvider';
}

/// See also [_labelCount].
class _LabelCountProvider extends AutoDisposeFutureProvider<int> {
  /// See also [_labelCount].
  _LabelCountProvider(
    this.label,
    this.start,
    this.end,
  ) : super.internal(
          (ref) => _labelCount(
            ref,
            label,
            start,
            end,
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
  final DateTime start;
  final DateTime end;

  @override
  bool operator ==(Object other) {
    return other is _LabelCountProvider &&
        other.label == label &&
        other.start == start &&
        other.end == end;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, label.hashCode);
    hash = _SystemHash.combine(hash, start.hashCode);
    hash = _SystemHash.combine(hash, end.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
