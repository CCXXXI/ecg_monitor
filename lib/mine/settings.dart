import "package:flex_color_picker/flex_color_picker.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:logging/logging.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../database.dart";
import "../utils/constants/keys.dart" as key;
import "../utils/constants/strings.dart" as str;
import "../utils/logger.dart";
import "model_test.dart";

part "settings.g.dart";

@riverpod
class PortraitDuration extends _$PortraitDuration {
  @override
  double build() => prefs.getDouble(key.portraitDuration) ?? 5;

  Future<void> set(double duration) async {
    state = duration;
    await prefs.setDouble(key.portraitDuration, duration);
  }
}

@riverpod
class LandscapeDuration extends _$LandscapeDuration {
  @override
  double build() => prefs.getDouble(key.landscapeDuration) ?? 10;

  Future<void> set(double duration) async {
    state = duration;
    await prefs.setDouble(key.landscapeDuration, duration);
  }
}

@riverpod
class BackgroundColor extends _$BackgroundColor {
  @override
  Color build() {
    final hex = prefs.getInt(key.backgroundColorHex) ?? Colors.white.value;
    return Color(hex);
  }

  Future<void> set(Color color) async {
    state = color;
    await prefs.setInt(key.backgroundColorHex, color.value);
  }
}

@riverpod
class LineColor extends _$LineColor {
  @override
  Color build() {
    final hex = prefs.getInt(key.lineColorHex) ?? Colors.black.value;
    return Color(hex);
  }

  Future<void> set(Color color) async {
    state = color;
    await prefs.setInt(key.lineColorHex, color.value);
  }
}

@riverpod
class GridColor extends _$GridColor {
  @override
  Color build() {
    final hex = prefs.getInt(key.gridColorHex) ?? Colors.red.value;
    return Color(hex);
  }

  Future<void> set(Color color) async {
    state = color;
    await prefs.setInt(key.gridColorHex, color.value);
  }
}

enum LineType { hide, simple, full }

@riverpod
class HorizontalLineType extends _$HorizontalLineType {
  @override
  LineType build() {
    final index =
        prefs.getInt(key.horizontalLineTypeIndex) ?? LineType.full.index;
    return LineType.values[index];
  }

  Future<void> set(LineType type) async {
    state = type;
    await prefs.setInt(key.horizontalLineTypeIndex, type.index);
  }
}

@riverpod
class VerticalLineType extends _$VerticalLineType {
  @override
  LineType build() {
    final index =
        prefs.getInt(key.verticalLineTypeIndex) ?? LineType.full.index;
    return LineType.values[index];
  }

  Future<void> set(LineType type) async {
    state = type;
    await prefs.setInt(key.horizontalLineTypeIndex, type.index);
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
}

@riverpod
class ShowDotsOn extends _$ShowDotsOn {
  @override
  bool build() => prefs.getBool(key.showDotsOn) ?? false;

  Future<void> set({required bool on}) async {
    state = on;
    await prefs.setBool(key.showDotsOn, on);
  }
}

class Settings extends ConsumerWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // monitor settings
    final portraitDuration = ref.watch(portraitDurationProvider);
    final landscapeDuration = ref.watch(landscapeDurationProvider);
    final backgroundColor = ref.watch(backgroundColorProvider);
    final lineColor = ref.watch(lineColorProvider);
    final gridColor = ref.watch(gridColorProvider);
    final horizontalLineType = ref.watch(horizontalLineTypeProvider);
    final verticalLineType = ref.watch(verticalLineTypeProvider);

    final portraitDurationString = "${portraitDuration.toStringAsFixed(0)}s";
    final landscapeDurationString = "${landscapeDuration.toStringAsFixed(0)}s";

    // analytics settings
    final autoUploadOn = ref.watch(autoUploadOnProvider);

    // devTools settings
    final fakeDeviceOn = ref.watch(fakeDeviceOnProvider);
    final loggerLevel = ref.watch(_loggerLevelProvider);
    final showDotsOn = ref.watch(showDotsOnProvider);

    final loggerLevelIndex = loggerLevels.indexOf(loggerLevel);

    return Scaffold(
      appBar: AppBar(title: const Text(str.settings)),
      body: ListView(
        children: [
          const _SectionTitle(str.monitor),
          ListTile(
            leading: const Icon(Icons.stay_primary_portrait_outlined),
            title: const Text(str.portraitDuration),
            subtitle: Text("${str.recent} $portraitDurationString"),
            trailing: SizedBox(
              width: 200,
              child: Slider.adaptive(
                value: portraitDuration,
                onChanged: ref.read(portraitDurationProvider.notifier).set,
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
                onChanged: ref.read(landscapeDurationProvider.notifier).set,
                min: 2,
                max: 20,
                divisions: 9,
                label: landscapeDurationString,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.color_lens_outlined),
            title: const Text(str.backgroundColor),
            subtitle: Text("0x${backgroundColor.hex}"),
            trailing: ColorIndicator(color: backgroundColor, hasBorder: true),
            onTap: () async => ref
                .read(backgroundColorProvider.notifier)
                .set(await _pickColor(context, backgroundColor)),
          ),
          ListTile(
            leading: const Icon(Icons.line_axis_outlined),
            title: const Text(str.lineColor),
            subtitle: Text("0x${lineColor.hex}"),
            trailing: ColorIndicator(color: lineColor, hasBorder: true),
            onTap: () async => ref
                .read(lineColorProvider.notifier)
                .set(await _pickColor(context, lineColor)),
          ),
          ListTile(
            leading: const Icon(Icons.grid_on_outlined),
            title: const Text(str.gridColor),
            subtitle: Text("0x${gridColor.hex}"),
            trailing: ColorIndicator(color: gridColor, hasBorder: true),
            onTap: () async => ref
                .read(gridColorProvider.notifier)
                .set(await _pickColor(context, gridColor)),
          ),
          ListTile(
            leading: const Icon(Icons.border_horizontal_outlined),
            title: const Text(str.horizontalLine),
            trailing: SegmentedButton(
              segments: _lineTypeSegments,
              selected: {horizontalLineType},
              onSelectionChanged: (selected) async => ref
                  .read(horizontalLineTypeProvider.notifier)
                  .set(selected.first),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.border_vertical_outlined),
            title: const Text(str.verticalLine),
            trailing: SegmentedButton(
              segments: _lineTypeSegments,
              selected: {verticalLineType},
              onSelectionChanged: (selected) async => ref
                  .read(verticalLineTypeProvider.notifier)
                  .set(selected.first),
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
            onTap: () async {
              final res = await modelTest();
              final resStr = res ? str.pass : str.fail;
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(resStr + str.detailsInConsole)),
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
                    .set(loggerLevels[value.toInt()]),
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
                ref.read(showDotsOnProvider.notifier).set(on: on),
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
