import "package:flex_color_picker/flex_color_picker.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:logging/logging.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../database.dart";
import "../utils/constants/keys.dart" as key;
import "../utils/constants/strings.dart" as str;
import "../utils/logger.dart";
import "model_test.dart";

part "settings.freezed.dart";
part "settings.g.dart";

enum LineType { hide, simple, full }

@freezed
class MonitorSettingGroup with _$MonitorSettingGroup {
  const factory MonitorSettingGroup({
    required double portraitDuration,
    required double landscapeDuration,
    required double refreshRateHz,
    required double minDistance,
    required Color backgroundColor,
    required Color lineColor,
    required Color gridColor,
    required LineType horizontalLineType,
    required LineType verticalLineType,
    required bool showDotsOn,
  }) = _MonitorSettingGroup;

  static const professional = MonitorSettingGroup(
    portraitDuration: 5,
    landscapeDuration: 10,
    refreshRateHz: 20,
    minDistance: 1,
    backgroundColor: Colors.white,
    lineColor: Colors.black,
    gridColor: Color(0xffff0000),
    horizontalLineType: LineType.full,
    verticalLineType: LineType.full,
    showDotsOn: false,
  );

  static const simple = MonitorSettingGroup(
    portraitDuration: 5,
    landscapeDuration: 10,
    refreshRateHz: 20,
    minDistance: 1,
    backgroundColor: Colors.black,
    lineColor: Color(0xff00ff00),
    gridColor: Colors.white,
    horizontalLineType: LineType.hide,
    verticalLineType: LineType.hide,
    showDotsOn: false,
  );

  /// For [ButtonSegment.value] only.
  static const custom = MonitorSettingGroup(
    portraitDuration: 5,
    landscapeDuration: 10,
    refreshRateHz: 20,
    minDistance: 1,
    backgroundColor: Colors.black,
    lineColor: Colors.green,
    gridColor: Colors.white,
    horizontalLineType: LineType.hide,
    verticalLineType: LineType.hide,
    showDotsOn: true,
  );
}

@riverpod
class MonitorSettings extends _$MonitorSettings {
  @override
  MonitorSettingGroup build() {
    var s = MonitorSettingGroup.professional;

    final portraitDuration = prefs.getDouble(key.portraitDuration);
    if (portraitDuration != null) {
      s = s.copyWith(portraitDuration: portraitDuration);
    }

    final landscapeDuration = prefs.getDouble(key.landscapeDuration);
    if (landscapeDuration != null) {
      s = s.copyWith(landscapeDuration: landscapeDuration);
    }

    final refreshRateHz = prefs.getDouble(key.refreshRateHz);
    if (refreshRateHz != null) {
      s = s.copyWith(refreshRateHz: refreshRateHz);
    }

    final minDistance = prefs.getDouble(key.minDistance);
    if (minDistance != null) {
      s = s.copyWith(minDistance: minDistance);
    }

    final backgroundColorHex = prefs.getInt(key.backgroundColorHex);
    if (backgroundColorHex != null) {
      s = s.copyWith(backgroundColor: Color(backgroundColorHex));
    }

    final lineColorHex = prefs.getInt(key.lineColorHex);
    if (lineColorHex != null) {
      s = s.copyWith(lineColor: Color(lineColorHex));
    }

    final gridColorHex = prefs.getInt(key.gridColorHex);
    if (gridColorHex != null) {
      s = s.copyWith(gridColor: Color(gridColorHex));
    }

    final horizontalLineTypeIndex = prefs.getInt(key.horizontalLineTypeIndex);
    if (horizontalLineTypeIndex != null) {
      s = s.copyWith(
        horizontalLineType: LineType.values[horizontalLineTypeIndex],
      );
    }

    final verticalLineTypeIndex = prefs.getInt(key.verticalLineTypeIndex);
    if (verticalLineTypeIndex != null) {
      s = s.copyWith(
        verticalLineType: LineType.values[verticalLineTypeIndex],
      );
    }

    final showDotsOn = prefs.getBool(key.showDotsOn);
    if (showDotsOn != null) {
      s = s.copyWith(showDotsOn: showDotsOn);
    }

    return s;
  }

  Future<void> set(MonitorSettingGroup s) async {
    state = s;
    await prefs.setDouble(key.portraitDuration, s.portraitDuration);
    await prefs.setDouble(key.landscapeDuration, s.landscapeDuration);
    await prefs.setDouble(key.refreshRateHz, s.refreshRateHz);
    await prefs.setDouble(key.minDistance, s.minDistance);
    await prefs.setInt(key.backgroundColorHex, s.backgroundColor.value);
    await prefs.setInt(key.lineColorHex, s.lineColor.value);
    await prefs.setInt(key.gridColorHex, s.gridColor.value);
    await prefs.setInt(key.horizontalLineTypeIndex, s.horizontalLineType.index);
    await prefs.setInt(key.verticalLineTypeIndex, s.verticalLineType.index);
    await prefs.setBool(key.showDotsOn, s.showDotsOn);
  }

  Future<void> setPortraitDuration(double duration) async {
    state = state.copyWith(portraitDuration: duration);
    await prefs.setDouble(key.portraitDuration, duration);
  }

  Future<void> setLandscapeDuration(double duration) async {
    state = state.copyWith(landscapeDuration: duration);
    await prefs.setDouble(key.landscapeDuration, duration);
  }

  Future<void> setRefreshRateHz(double refreshRateHz) async {
    state = state.copyWith(refreshRateHz: refreshRateHz);
    await prefs.setDouble(key.refreshRateHz, refreshRateHz);
  }

  Future<void> setMinDistance(double minDistance) async {
    state = state.copyWith(minDistance: minDistance);
    await prefs.setDouble(key.minDistance, minDistance);
  }

  Future<void> setBackgroundColor(Color color) async {
    state = state.copyWith(backgroundColor: color);
    await prefs.setInt(key.backgroundColorHex, color.value);
  }

  Future<void> setLineColor(Color color) async {
    state = state.copyWith(lineColor: color);
    await prefs.setInt(key.lineColorHex, color.value);
  }

  Future<void> setGridColor(Color color) async {
    state = state.copyWith(gridColor: color);
    await prefs.setInt(key.gridColorHex, color.value);
  }

  Future<void> setHorizontalLineType(LineType type) async {
    state = state.copyWith(horizontalLineType: type);
    await prefs.setInt(key.horizontalLineTypeIndex, type.index);
  }

  Future<void> setVerticalLineType(LineType type) async {
    state = state.copyWith(verticalLineType: type);
    await prefs.setInt(key.verticalLineTypeIndex, type.index);
  }

  Future<void> setShowDots({required bool on}) async {
    state = state.copyWith(showDotsOn: on);
    await prefs.setBool(key.showDotsOn, on);
  }
}

@riverpod
class AutoUploadOn extends _$AutoUploadOn {
  @override
  bool build() => prefs.getBool(key.autoUploadOn) ?? true;

  Future<void> set({required bool on}) async {
    state = on;
    await prefs.setBool(key.autoUploadOn, on);
  }
}

@riverpod
class FakeDeviceOn extends _$FakeDeviceOn {
  @override
  bool build() => prefs.getBool(key.fakeDeviceOn) ?? false;

  Future<void> set({required bool on}) async {
    state = on;
    await prefs.setBool(key.fakeDeviceOn, on);
  }
}

@riverpod
class _LoggerLevel extends _$LoggerLevel {
  @override
  Level build() {
    final index = prefs.getInt(key.loggerLevelIndex) ?? infoLevelIndex;
    return loggerLevels[index];
  }

  Future<void> set(Level level) async {
    state = level;
    Logger.root.level = level;

    final index = loggerLevels.indexOf(level);
    await prefs.setInt(key.loggerLevelIndex, index);
  }

  Future<void> setIndex(int index) async => set(loggerLevels[index]);
}

class Settings extends ConsumerWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // monitor settings
    final monitorSettings = ref.watch(monitorSettingsProvider);
    final portraitDuration = monitorSettings.portraitDuration;
    final landscapeDuration = monitorSettings.landscapeDuration;
    final refreshRateHz = monitorSettings.refreshRateHz;
    final minDistance = monitorSettings.minDistance;
    final backgroundColor = monitorSettings.backgroundColor;
    final lineColor = monitorSettings.lineColor;
    final gridColor = monitorSettings.gridColor;

    final portraitDurationString = "${portraitDuration.toStringAsFixed(0)} s";
    final landscapeDurationString = "${landscapeDuration.toStringAsFixed(0)} s";
    final refreshRateHzString = "${refreshRateHz.toStringAsFixed(0)} Hz";
    final minDistanceString = minDistance.toStringAsFixed(1);

    // analytics settings
    final autoUploadOn = ref.watch(autoUploadOnProvider);

    // devTools settings
    final fakeDeviceOn = ref.watch(fakeDeviceOnProvider);
    final loggerLevel = ref.watch(_loggerLevelProvider);
    final showDotsOn = monitorSettings.showDotsOn;

    final loggerLevelIndex = loggerLevels.indexOf(loggerLevel);

    return Scaffold(
      appBar: AppBar(title: const Text(str.settings)),
      body: ListView(
        children: [
          const _SectionTitle(str.monitor),
          ListTile(
            leading: const Icon(Icons.monitor_heart_outlined),
            title: const Text(str.style),
            trailing: SegmentedButton(
              segments: const [
                ButtonSegment(
                  value: MonitorSettingGroup.professional,
                  icon: Icon(Icons.grid_on_outlined),
                  label: Text(str.professional),
                ),
                ButtonSegment(
                  value: MonitorSettingGroup.simple,
                  icon: Icon(Icons.square_outlined),
                  label: Text(str.simple),
                ),
                ButtonSegment(
                  value: MonitorSettingGroup.custom,
                  icon: Icon(Icons.tune_outlined),
                  label: Text(str.custom),
                  enabled: false,
                ),
              ],
              selected: {
                if (monitorSettings == MonitorSettingGroup.professional ||
                    monitorSettings == MonitorSettingGroup.simple)
                  monitorSettings
                else
                  MonitorSettingGroup.custom
              },
              onSelectionChanged: (selected) async => ref
                  .read(monitorSettingsProvider.notifier)
                  .set(selected.single),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.stay_primary_portrait_outlined),
            title: const Text(str.portraitDuration),
            subtitle: Text("${str.recent} $portraitDurationString"),
            trailing: SizedBox(
              width: 200,
              child: Slider.adaptive(
                value: portraitDuration,
                onChanged: ref
                    .read(monitorSettingsProvider.notifier)
                    .setPortraitDuration,
                min: 1,
                max: 10,
                divisions: 9,
                label: portraitDurationString,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.stay_primary_landscape_outlined),
            title: const Text(str.landscapeDuration),
            subtitle: Text("${str.recent} $landscapeDurationString"),
            trailing: SizedBox(
              width: 200,
              child: Slider.adaptive(
                value: landscapeDuration,
                onChanged: ref
                    .read(monitorSettingsProvider.notifier)
                    .setLandscapeDuration,
                min: 2,
                max: 20,
                divisions: 9,
                label: landscapeDurationString,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.speed_outlined),
            title: const Text(str.refreshRate),
            subtitle: Text(refreshRateHzString),
            trailing: SizedBox(
              width: 200,
              child: Slider.adaptive(
                value: refreshRateHz,
                onChanged:
                    ref.read(monitorSettingsProvider.notifier).setRefreshRateHz,
                min: 10,
                max: 60,
                divisions: 10,
                label: refreshRateHzString,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.timeline_outlined),
            title: const Text(str.minDistance),
            subtitle: Text(minDistanceString),
            trailing: SizedBox(
              width: 200,
              child: Slider.adaptive(
                value: minDistance,
                onChanged:
                    ref.read(monitorSettingsProvider.notifier).setMinDistance,
                max: 5,
                divisions: 10,
                label: minDistanceString,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.color_lens_outlined),
            title: const Text(str.backgroundColor),
            trailing: ColorIndicator(color: backgroundColor, hasBorder: true),
            onTap: () async => ref
                .read(monitorSettingsProvider.notifier)
                .setBackgroundColor(await _pickColor(context, backgroundColor)),
          ),
          ListTile(
            leading: const Icon(Icons.show_chart_outlined),
            title: const Text(str.lineColor),
            trailing: ColorIndicator(color: lineColor, hasBorder: true),
            onTap: () async => ref
                .read(monitorSettingsProvider.notifier)
                .setLineColor(await _pickColor(context, lineColor)),
          ),
          ListTile(
            leading: const Icon(Icons.grid_on_outlined),
            title: const Text(str.gridColor),
            trailing: ColorIndicator(color: gridColor, hasBorder: true),
            onTap: () async => ref
                .read(monitorSettingsProvider.notifier)
                .setGridColor(await _pickColor(context, gridColor)),
          ),
          ListTile(
            leading: const Icon(Icons.border_horizontal_outlined),
            title: const Text(str.horizontalLine),
            trailing: SegmentedButton(
              segments: _lineTypeSegments,
              selected: {monitorSettings.horizontalLineType},
              onSelectionChanged: (selected) async => ref
                  .read(monitorSettingsProvider.notifier)
                  .setHorizontalLineType(selected.single),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.border_vertical_outlined),
            title: const Text(str.verticalLine),
            trailing: SegmentedButton(
              segments: _lineTypeSegments,
              selected: {monitorSettings.verticalLineType},
              onSelectionChanged: (selected) async => ref
                  .read(monitorSettingsProvider.notifier)
                  .setVerticalLineType(selected.single),
            ),
          ),
          const _SectionTitle(str.analytics),
          SwitchListTile.adaptive(
            secondary: const Icon(Icons.cloud_upload_outlined),
            title: const Text(str.autoUpload),
            value: autoUploadOn,
            onChanged: (on) async =>
                ref.read(autoUploadOnProvider.notifier).set(on: on),
          ),
          const _SectionTitle(str.devTools),
          SwitchListTile.adaptive(
            secondary: const Icon(Icons.device_hub_outlined),
            title: const Text(str.fakeDevice),
            value: fakeDeviceOn,
            onChanged: (on) async =>
                ref.read(fakeDeviceOnProvider.notifier).set(on: on),
          ),
          ListTile(
            leading: const Icon(Icons.compare_arrows_outlined),
            title: const Text(str.modelTest),
            enabled: !kIsWeb, // meaningless on web
            onTap: () async {
              final res = await modelTest();
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(res ? str.pass : str.fail)),
                );
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.developer_mode_outlined),
            title: const Text(str.loggerLevel),
            subtitle: Text(loggerLevel.name),
            trailing: SizedBox(
              width: 200,
              child: Slider.adaptive(
                value: loggerLevelIndex.toDouble(),
                onChanged: (value) async => ref
                    .read(_loggerLevelProvider.notifier)
                    .setIndex(value.toInt()),
                max: loggerLevels.length - 1,
                divisions: loggerLevels.length - 1,
                label: loggerLevel.name,
              ),
            ),
          ),
          SwitchListTile.adaptive(
            secondary: const Icon(Icons.linear_scale_outlined),
            title: const Text(str.showDots),
            value: showDotsOn,
            onChanged: (on) async =>
                ref.read(monitorSettingsProvider.notifier).setShowDots(on: on),
          ),
        ],
      ),
    );
  }

  static Future<Color> _pickColor(
    BuildContext context,
    Color initialColor,
  ) async =>
      showColorPickerDialog(
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

  static const _lineTypeSegments = [
    ButtonSegment(
      value: LineType.hide,
      icon: Icon(Icons.visibility_off_outlined),
      label: Text(str.lineTypeHide),
    ),
    ButtonSegment(
      value: LineType.simple,
      icon: Icon(Icons.grid_3x3_outlined),
      label: Text(str.lineTypeSimple),
    ),
    ButtonSegment(
      value: LineType.full,
      icon: Icon(Icons.grid_4x4_outlined),
      label: Text(str.lineTypeFull),
    ),
  ];
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.title);

  static const padding =
      EdgeInsetsDirectional.only(top: 24, bottom: 10, start: 24, end: 24);

  final String title;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    final textStyle = Theme.of(context).textTheme.labelLarge;

    return Padding(
      padding: padding,
      child: Text(title, style: textStyle!.copyWith(color: color)),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty("title", title));
  }
}
