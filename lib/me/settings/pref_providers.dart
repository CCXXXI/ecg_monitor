import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../database.dart";
import "../../utils/constants/keys.dart";

part "pref_providers.g.dart";

@riverpod
class _Bool extends _$Bool {
  @override
  bool build(String key, bool defaultValue) =>
      prefs.getBool(key) ?? defaultValue;

  // ignore: avoid_positional_boolean_parameters
  Future<void> set(bool value) async {
    state = value;
    await prefs.setBool(key, value);
  }
}

final autoUploadProvider = _boolProvider("$analytics.$autoUploadOn", true);
