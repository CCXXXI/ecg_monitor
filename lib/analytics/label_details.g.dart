// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_details.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class LabelDetails extends ConsumerWidget {
  const LabelDetails(
    this.label, {
    Key? key,
  }) : super(key: key);

  final Label label;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _labelDetails(
        _context,
        _ref,
        label,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<Label>('label', label));
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$labelTimesHash() => r'9f477ab2aa4075aa44ef2bb5f3f2108cf1a9ae1d';

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

typedef _LabelTimesRef = AutoDisposeFutureProviderRef<List<DateTime>>;

/// See also [_labelTimes].
@ProviderFor(_labelTimes)
const _labelTimesProvider = _LabelTimesFamily();

/// See also [_labelTimes].
class _LabelTimesFamily extends Family<AsyncValue<List<DateTime>>> {
  /// See also [_labelTimes].
  const _LabelTimesFamily();

  /// See also [_labelTimes].
  _LabelTimesProvider call(
    Label label,
  ) {
    return _LabelTimesProvider(
      label,
    );
  }

  @override
  _LabelTimesProvider getProviderOverride(
    covariant _LabelTimesProvider provider,
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
  String? get name => r'_labelTimesProvider';
}

/// See also [_labelTimes].
class _LabelTimesProvider extends AutoDisposeFutureProvider<List<DateTime>> {
  /// See also [_labelTimes].
  _LabelTimesProvider(
    this.label,
  ) : super.internal(
          (ref) => _labelTimes(
            ref,
            label,
          ),
          from: _labelTimesProvider,
          name: r'_labelTimesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$labelTimesHash,
          dependencies: _LabelTimesFamily._dependencies,
          allTransitiveDependencies:
              _LabelTimesFamily._allTransitiveDependencies,
        );

  final Label label;

  @override
  bool operator ==(Object other) {
    return other is _LabelTimesProvider && other.label == label;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, label.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
