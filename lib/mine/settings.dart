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
class GridColor extends _$GridColor {
  @override
  int build() => prefs.getInt(Strings.gridColor) ?? Colors.red.value;

  void set(int value) {
    state = value;
    prefs.setInt(Strings.gridColor, value);
  }
}

enum LineType { hide, simple, full }

@riverpod
class HorizontalLineTypeIndex extends _$HorizontalLineTypeIndex {
  @override
  int build() => prefs.getInt(Strings.horizontalLine) ?? LineType.full.index;

  void set(int value) {
    state = value;
    prefs.setInt(Strings.horizontalLine, value);
  }
}

@riverpod
class VerticalLineTypeIndex extends _$VerticalLineTypeIndex {
  @override
  int build() => prefs.getInt(Strings.verticalLine) ?? LineType.full.index;

  void set(int value) {
    state = value;
    prefs.setInt(Strings.verticalLine, value);
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

@riverpod
class ShowDots extends _$ShowDots {
  @override
  bool build() => prefs.getBool(Strings.showDots) ?? false;

  void set(bool value) {
    state = value;
    prefs.setBool(Strings.showDots, value);
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
    final gridColorHex = ref.watch(gridColorProvider);
    final horizontalLineTypeIndex = ref.watch(horizontalLineTypeIndexProvider);
    final verticalLineTypeIndex = ref.watch(verticalLineTypeIndexProvider);

    final portraitDurationString = "${portraitDuration.toStringAsFixed(0)}s";
    final landscapeDurationString = "${landscapeDuration.toStringAsFixed(0)}s";
    final backgroundColor = Color(backgroundColorHex);
    final lineColor = Color(lineColorHex);
    final gridColor = Color(gridColorHex);
    final horizontalLineType = LineType.values[horizontalLineTypeIndex];
    final verticalLineType = LineType.values[verticalLineTypeIndex];

    // analytics settings
    final autoUpload = ref.watch(autoUploadProvider);

    // devTools settings
    final fakeDevice = ref.watch(fakeDeviceProvider);
    final loggerLevelIndex = ref.watch(loggerLevelIndexProvider);
    final showDots = ref.watch(showDotsProvider);

    final loggerLevelName = loggerLevels[loggerLevelIndex].name;

    return Scaffold(
      appBar: AppBar(title: const Text(Strings.settings)),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text(Strings.monitor),
            tiles: [
              SettingsTile(
                leading: const Icon(Icons.stay_primary_portrait_outlined),
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
                leading: const Icon(Icons.stay_primary_landscape_outlined),
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
                leading: const Icon(Icons.color_lens_outlined),
                title: const Text(Strings.backgroundColor),
                value: Text("0x${backgroundColor.hex}"),
                trailing: ColorIndicator(color: backgroundColor),
                onPressed: (context) async => ref
                    .read(backgroundColorProvider.notifier)
                    .set(await _pickColor(context, backgroundColor)),
              ),
              SettingsTile(
                leading: const Icon(Icons.line_axis_outlined),
                title: const Text(Strings.lineColor),
                value: Text("0x${lineColor.hex}"),
                trailing: ColorIndicator(color: lineColor),
                onPressed: (context) async => ref
                    .read(lineColorProvider.notifier)
                    .set(await _pickColor(context, lineColor)),
              ),
              SettingsTile(
                leading: const Icon(Icons.grid_3x3_outlined),
                title: const Text(Strings.gridColor),
                value: Text("0x${gridColor.hex}"),
                trailing: ColorIndicator(color: gridColor),
                onPressed: (context) async => ref
                    .read(gridColorProvider.notifier)
                    .set(await _pickColor(context, gridColor)),
              ),
              SettingsTile(
                leading: const Icon(Icons.border_horizontal_outlined),
                title: const Text(Strings.horizontalLine),
                trailing: SegmentedButton(
                  segments: lineTypeSegments,
                  selected: {horizontalLineType},
                  onSelectionChanged: (selected) => ref
                      .read(horizontalLineTypeIndexProvider.notifier)
                      .set(selected.first.index),
                ),
              ),
              SettingsTile(
                leading: const Icon(Icons.border_vertical_outlined),
                title: const Text(Strings.verticalLine),
                trailing: SegmentedButton(
                  segments: lineTypeSegments,
                  selected: {verticalLineType},
                  onSelectionChanged: (selected) => ref
                      .read(verticalLineTypeIndexProvider.notifier)
                      .set(selected.first.index),
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
                leading: const Icon(Icons.cloud_upload_outlined),
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
                leading: const Icon(Icons.device_hub_outlined),
                title: const Text(Strings.fakeDevice),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.compare_arrows_outlined),
                title: const Text(Strings.modelTest),
                onPressed: (context) => modelTest(),
              ),
              SettingsTile(
                leading: const Icon(Icons.developer_mode_outlined),
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
              SettingsTile.switchTile(
                initialValue: showDots,
                onToggle: ref.read(showDotsProvider.notifier).set,
                leading: const Icon(Icons.linear_scale_outlined),
                title: const Text(Strings.showDots),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static Future<int> _pickColor(
    BuildContext context,
    Color initialColor,
  ) async {
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

  static const lineTypeSegments = [
    ButtonSegment(
      value: LineType.hide,
      label: Text(Strings.lineTypeHide),
    ),
    ButtonSegment(
      value: LineType.simple,
      label: Text(Strings.lineTypeSimple),
    ),
    ButtonSegment(
      value: LineType.full,
      label: Text(Strings.lineTypeFull),
    ),
  ];
}
