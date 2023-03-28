// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class Settings extends ConsumerWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _settings(
        _context,
        _ref,
      );
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loggerLevelHash() => r'96f217b5a75f18911f0b818a32be5b41d9afebd9';

/// See also [_LoggerLevel].
@ProviderFor(_LoggerLevel)
final _loggerLevelProvider =
    AutoDisposeNotifierProvider<_LoggerLevel, Level>.internal(
  _LoggerLevel.new,
  name: r'_loggerLevelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loggerLevelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoggerLevel = AutoDisposeNotifier<Level>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
