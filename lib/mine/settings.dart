import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:settings_ui/settings_ui.dart";

import "../database.dart";
import "../utils/constants.dart";
import "model_test.dart";

part "settings.g.dart";

@riverpod
class PortraitDuration extends _$PortraitDuration {
  @override
  double build() => prefs.getDouble(Strings.portraitDuration) ?? 5;

  void set(double value) {
    state = value;
    prefs.setDouble(Strings.portraitDuration, value);
  }
}

@riverpod
class LandscapeDuration extends _$LandscapeDuration {
  @override
  double build() => prefs.getDouble(Strings.landscapeDuration) ?? 10;

  void set(double value) {
    state = value;
    prefs.setDouble(Strings.landscapeDuration, value);
  }
}

@riverpod
class AutoUpload extends _$AutoUpload {
  @override
  bool build() => prefs.getBool(Strings.autoUpload) ?? true;

  void set(bool value) {
    state = value;
    prefs.setBool(Strings.autoUpload, value);
  }
}

@riverpod
class FakeDevice extends _$FakeDevice {
  @override
  bool build() => prefs.getBool(Strings.fakeDevice) ?? false;

  void set(bool value) {
    state = value;
    prefs.setBool(Strings.fakeDevice, value);
  }
}

class Settings extends ConsumerWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portraitDuration = ref.watch(portraitDurationProvider);
    final landscapeDuration = ref.watch(landscapeDurationProvider);
    final autoUpload = ref.watch(autoUploadProvider);
    final fakeDevice = ref.watch(fakeDeviceProvider);

    final portraitDurationString = "${portraitDuration.toStringAsFixed(0)}s";
    final landscapeDurationString = "${landscapeDuration.toStringAsFixed(0)}s";

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
                value: Text(portraitDurationString),
                trailing: Slider.adaptive(
                  value: portraitDuration,
                  onChanged: ref.read(portraitDurationProvider.notifier).set,
                  min: 1,
                  max: 10,
                  divisions: 9,
                  label: portraitDurationString,
                ),
              ),
              SettingsTile(
                leading: const Icon(Icons.stay_primary_landscape),
                title: const Text(Strings.landscapeDuration),
                value: Text(landscapeDurationString),
                trailing: Slider.adaptive(
                  value: landscapeDuration,
                  onChanged: ref.read(landscapeDurationProvider.notifier).set,
                  min: 2,
                  max: 20,
                  divisions: 9,
                  label: landscapeDurationString,
                ),
              ),
            ],
          ),
          SettingsSection(
            title: const Text(Strings.analytics),
            tiles: [
              SettingsTile.switchTile(
                initialValue: autoUpload,
                onToggle: ref.read(autoUploadProvider.notifier).set,
                leading: const Icon(Icons.cloud_upload),
                title: const Text(Strings.autoUpload),
              ),
            ],
          ),
          SettingsSection(
            title: const Text(Strings.devTools),
            tiles: [
              SettingsTile.switchTile(
                initialValue: fakeDevice,
                onToggle: ref.read(fakeDeviceProvider.notifier).set,
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
