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
class Settings with _$Settings {
  const factory Settings({
    required bool fakeDevice,
  }) = _Settings;
}

@riverpod
class SettingsModel extends _$SettingsModel {
  @override
  Settings build() => Settings(
        fakeDevice: prefs.getBool(Strings.fakeDevice) ?? false,
      );

  void setFakeDevice(bool value) {
    state = state.copyWith(fakeDevice: value);
    prefs.setBool(Strings.fakeDevice, value);
  }
}

class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text(Strings.settings)),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text(Strings.devTools),
            tiles: [
              SettingsTile.switchTile(
                initialValue: settings.fakeDevice,
                onToggle:
                    ref.read(settingsModelProvider.notifier).setFakeDevice,
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
          )
        ],
      ),
    );
  }
}
