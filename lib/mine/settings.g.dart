// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

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

String _$PortraitDurationHash() => r'90bc4c7a674771c36e31367573bc1455979fb61a';

/// See also [PortraitDuration].
final portraitDurationProvider =
    AutoDisposeNotifierProvider<PortraitDuration, double>(
  PortraitDuration.new,
  name: r'portraitDurationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PortraitDurationHash,
);

typedef PortraitDurationRef = AutoDisposeNotifierProviderRef<double>;

abstract class _$PortraitDuration extends AutoDisposeNotifier<double> {
  @override
  double build();
}

String _$LandscapeDurationHash() => r'8687d81f5f4d75e08fb7e58fe5da21ebcfe70cd5';

/// See also [LandscapeDuration].
final landscapeDurationProvider =
    AutoDisposeNotifierProvider<LandscapeDuration, double>(
  LandscapeDuration.new,
  name: r'landscapeDurationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$LandscapeDurationHash,
);

typedef LandscapeDurationRef = AutoDisposeNotifierProviderRef<double>;

abstract class _$LandscapeDuration extends AutoDisposeNotifier<double> {
  @override
  double build();
}

String _$AutoUploadHash() => r'62fd1bc0b9dde3f9c4d78dbc760bc0e868b609c2';

/// See also [AutoUpload].
final autoUploadProvider = AutoDisposeNotifierProvider<AutoUpload, bool>(
  AutoUpload.new,
  name: r'autoUploadProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$AutoUploadHash,
);

typedef AutoUploadRef = AutoDisposeNotifierProviderRef<bool>;

abstract class _$AutoUpload extends AutoDisposeNotifier<bool> {
  @override
  bool build();
}

String _$FakeDeviceHash() => r'c3a63ddf4d531d5d97008e8ca64e873ed2590744';

/// See also [FakeDevice].
final fakeDeviceProvider = AutoDisposeNotifierProvider<FakeDevice, bool>(
  FakeDevice.new,
  name: r'fakeDeviceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$FakeDeviceHash,
);

typedef FakeDeviceRef = AutoDisposeNotifierProviderRef<bool>;

abstract class _$FakeDevice extends AutoDisposeNotifier<bool> {
  @override
  bool build();
}
