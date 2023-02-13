import "package:flex_color_picker/flex_color_picker.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:logging/logging.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:settings_ui/settings_ui.dart";

import "../database.dart";
import "../utils/constants.dart";
import "../utils/logger.dart";
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
class BackgroundColor extends _$BackgroundColor {
  @override
  int build() => prefs.getInt(Strings.backgroundColor) ?? Colors.white.value;

  void set(int value) {
    state = value;
    prefs.setInt(Strings.backgroundColor, value);
  }
}

@riverpod
class LineColor extends _$LineColor {
  @override
  int build() => prefs.getInt(Strings.lineColor) ?? Colors.red.value;

  void set(int value) {
    state = value;
    prefs.setInt(Strings.lineColor, value);
  }
}

@riverpod
class ShowDots extends _$ShowDots {
  @override
  bool build() => prefs.getBool(Strings.showDots) ?? false;

  void set(bool value) {
    state = value;
    prefs.setBool(Strings.showDots, value);
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

@riverpod
class LoggerLevelIndex extends _$LoggerLevelIndex {
  @override
  int build() => prefs.getInt(Strings.loggerLevel) ?? infoLevelIndex;

  void set(int value) {
    state = value;
    Logger.root.level = loggerLevels[value];
    prefs.setInt(Strings.loggerLevel, value);
  }
}

class Settings extends ConsumerWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // monitor settings
    final portraitDuration = ref.watch(portraitDurationProvider);
    final landscapeDuration = ref.watch(landscapeDurationProvider);
    final backgroundColorHex = ref.watch(backgroundColorProvider);
    final lineColorHex = ref.watch(lineColorProvider);

    final portraitDurationString = "${portraitDuration.toStringAsFixed(0)}s";
    final landscapeDurationString = "${landscapeDuration.toStringAsFixed(0)}s";
    final backgroundColor = Color(backgroundColorHex);
    final lineColor = Color(lineColorHex);
    final showDots = ref.watch(showDotsProvider);

    // analytics settings
    final autoUpload = ref.watch(autoUploadProvider);

    // devTools settings
    final fakeDevice = ref.watch(fakeDeviceProvider);
    final loggerLevelIndex = ref.watch(loggerLevelIndexProvider);

    final loggerLevelName = loggerLevels[loggerLevelIndex].name;

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
              SettingsTile(
                leading: const Icon(Icons.color_lens),
                title: const Text(Strings.backgroundColor),
                value: Text("0x${backgroundColor.hex}"),
                trailing: ColorIndicator(color: backgroundColor),
                onPressed: (context) async => ref
                    .read(backgroundColorProvider.notifier)
                    .set(await _pickColor(context, backgroundColor)),
              ),
              SettingsTile(
                leading: const Icon(Icons.line_axis),
                title: const Text(Strings.lineColor),
                value: Text("0x${lineColor.hex}"),
                trailing: ColorIndicator(color: lineColor),
                onPressed: (context) async => ref
                    .read(lineColorProvider.notifier)
                    .set(await _pickColor(context, lineColor)),
              ),
              SettingsTile.switchTile(
                initialValue: showDots,
                onToggle: ref.read(showDotsProvider.notifier).set,
                leading: const Icon(Icons.linear_scale),
                title: const Text(Strings.showDots),
              )
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
                onPressed: (context) => modelTest(),
              ),
              SettingsTile(
                leading: const Icon(Icons.developer_mode),
                title: const Text(Strings.loggerLevel),
                value: Text(loggerLevelName),
                trailing: Slider.adaptive(
                  value: loggerLevelIndex.toDouble(),
                  onChanged: (value) => ref
                      .read(loggerLevelIndexProvider.notifier)
                      .set(value.toInt()),
                  min: 0,
                  max: loggerLevels.length - 1,
                  divisions: loggerLevels.length - 1,
                  label: loggerLevelName,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<int> _pickColor(BuildContext context, Color initialColor) async {
    final color = await showColorPickerDialog(
      context,
      initialColor,
      enableShadesSelection: false,
      enableTonalPalette: true,
      pickersEnabled: {
        ColorPickerType.accent: false,
        ColorPickerType.primary: false,
        ColorPickerType.both: true,
      },
    );
    return color.value;
  }
}
