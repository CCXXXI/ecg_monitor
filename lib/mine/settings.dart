import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:settings_ui/settings_ui.dart";

import "../database.dart";
import "../utils/constants.dart";
import "model_test.dart";

part "settings.freezed.dart";
part "settings.g.dart";

@freezed
class SettingList with _$SettingList {
  const factory SettingList({
    required double portraitDuration,
    required double landscapeDuration,
    required bool fakeDevice,
  }) = _SettingList;
}

@riverpod
class Settings extends _$Settings {
  @override
  SettingList build() {
    return SettingList(
      portraitDuration: prefs.getDouble(Strings.portraitDuration) ?? 5,
      landscapeDuration: prefs.getDouble(Strings.landscapeDuration) ?? 10,
      fakeDevice: prefs.getBool(Strings.fakeDevice) ?? false,
    );
  }

  void setPortraitDuration(double value) {
    state = state.copyWith(portraitDuration: value);
    prefs.setDouble(Strings.portraitDuration, value);
  }

  void setLandscapeDuration(double value) {
    state = state.copyWith(landscapeDuration: value);
    prefs.setDouble(Strings.landscapeDuration, value);
  }

  void setFakeDevice(bool value) {
    state = state.copyWith(fakeDevice: value);
    prefs.setBool(Strings.fakeDevice, value);
  }
}

class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text(Strings.settings)),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text(Strings.monitor),
            tiles: [
              SettingsTile(
                leading: const Icon(Icons.stay_primary_portrait),
                title: const Text(Strings.portraitDuration),
                value: Text("${settings.portraitDuration.toStringAsFixed(0)}s"),
                trailing: Slider.adaptive(
                  value: settings.portraitDuration,
                  onChanged:
                      ref.read(settingsProvider.notifier).setPortraitDuration,
                  min: 1,
                  max: 10,
                  divisions: 9,
                  label: settings.portraitDuration.toStringAsFixed(0),
                ),
              ),
              SettingsTile(
                leading: const Icon(Icons.stay_primary_landscape),
                title: const Text(Strings.landscapeDuration),
                value:
                    Text("${settings.landscapeDuration.toStringAsFixed(0)}s"),
                trailing: Slider.adaptive(
                  value: settings.landscapeDuration,
                  onChanged:
                      ref.read(settingsProvider.notifier).setLandscapeDuration,
                  min: 2,
                  max: 20,
                  divisions: 9,
                  label: settings.landscapeDuration.toStringAsFixed(0),
                ),
              ),
            ],
          ),
          SettingsSection(
            title: const Text(Strings.devTools),
            tiles: [
              SettingsTile.switchTile(
                initialValue: settings.fakeDevice,
                onToggle: ref.read(settingsProvider.notifier).setFakeDevice,
                leading: const Icon(Icons.device_hub),
                title: const Text(Strings.fakeDevice),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.compare_arrows),
                title: const Text(Strings.modelTest),
                onPressed: (context) {
                  context.push("/log");
                  modelTest();
                },
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.developer_mode),
                title: const Text(Strings.log),
                onPressed: (context) => context.push("/log"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
