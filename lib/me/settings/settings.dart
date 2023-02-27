import "package:flex_color_picker/flex_color_picker.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:logging/logging.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../database.dart";
import "../../utils/constants/keys.dart" as key;
import "../../utils/constants/strings.dart" as str;
import "../../utils/logger.dart";
import "../model_test.dart";
import "data_types.dart";
import "providers.dart";

part "settings.g.dart";

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
    // realTime settings
    final realTimePortraitDuration =
        ref.watch(realTimePortraitDurationProvider);
    final realTimeLandscapeDuration =
        ref.watch(realTimeLandscapeDurationProvider);
    final realTimeRefreshRateHz = ref.watch(realTimeRefreshRateHzProvider);
    final realTimeMinDistance = ref.watch(realTimeMinDistanceProvider);
    final realTimeBackgroundColor = ref.watch(realTimeBackgroundColorProvider);
    final realTimeGridColor = ref.watch(realTimeGridColorProvider);
    final realTimeLineColor = ref.watch(realTimeLineColorProvider);
    final realTimeChartSettings = ref.watch(realTimeChartSettingsProvider);

    final realTimePortraitDurationString =
        "${realTimePortraitDuration.toStringAsFixed(0)} s";
    final realTimeLandscapeDurationString =
        "${realTimeLandscapeDuration.toStringAsFixed(0)} s";
    final realTimeRefreshRateHzString =
        "${realTimeRefreshRateHz.toStringAsFixed(0)} Hz";
    final realTimeMinDistanceString = realTimeMinDistance.toStringAsFixed(1);

    // devTools settings
    final loggerLevel = ref.watch(_loggerLevelProvider);
    final loggerLevelIndex = loggerLevels.indexOf(loggerLevel);

    return Scaffold(
      appBar: AppBar(title: const Text(str.settings)),
      body: ListView(
        children: [
          const _SectionTitle(str.realTime),
          ListTile(
            leading: const Icon(Icons.monitor_heart_outlined),
            title: const Text(str.style),
            trailing: SegmentedButton(
              segments: [
                ButtonSegment(
                  value: ChartSettingsData.professional,
                  icon: const Icon(Icons.grid_on_outlined),
                  label: const Text(str.professional),
                ),
                ButtonSegment(
                  value: ChartSettingsData.simple,
                  icon: const Icon(Icons.square_outlined),
                  label: const Text(str.simple),
                ),
                ButtonSegment(
                  value: ChartSettingsData.custom,
                  icon: const Icon(Icons.tune_outlined),
                  label: const Text(str.custom),
                  enabled: false,
                ),
              ],
              selected: {
                if (realTimeChartSettings == ChartSettingsData.professional ||
                    realTimeChartSettings == ChartSettingsData.simple)
                  realTimeChartSettings
                else
                  ChartSettingsData.custom
              },
              onSelectionChanged: (selected) async => ref
                  .read(realTimeChartSettingsProvider.notifier)
                  .set(selected.single),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.stay_primary_portrait_outlined),
            title: const Text(str.portraitDuration),
            subtitle: Text("${str.recent} $realTimePortraitDurationString"),
            trailing: SizedBox(
              width: 200,
              child: Slider.adaptive(
                value: realTimePortraitDuration,
                onChanged:
                    ref.read(realTimePortraitDurationProvider.notifier).set,
                min: 1,
                max: 10,
                divisions: 9,
                label: realTimePortraitDurationString,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.stay_primary_landscape_outlined),
            title: const Text(str.landscapeDuration),
            subtitle: Text("${str.recent} $realTimeLandscapeDurationString"),
            trailing: SizedBox(
              width: 200,
              child: Slider.adaptive(
                value: realTimeLandscapeDuration,
                onChanged:
                    ref.read(realTimeLandscapeDurationProvider.notifier).set,
                min: 2,
                max: 20,
                divisions: 9,
                label: realTimeLandscapeDurationString,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.speed_outlined),
            title: const Text(str.refreshRate),
            subtitle: Text(realTimeRefreshRateHzString),
            trailing: SizedBox(
              width: 200,
              child: Slider.adaptive(
                value: realTimeRefreshRateHz,
                onChanged: ref.read(realTimeRefreshRateHzProvider.notifier).set,
                min: 10,
                max: 60,
                divisions: 10,
                label: realTimeRefreshRateHzString,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.timeline_outlined),
            title: const Text(str.minDistance),
            subtitle: Text(realTimeMinDistanceString),
            trailing: SizedBox(
              width: 200,
              child: Slider.adaptive(
                value: realTimeMinDistance,
                onChanged: ref.read(realTimeMinDistanceProvider.notifier).set,
                max: 5,
                divisions: 10,
                label: realTimeMinDistanceString,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.color_lens_outlined),
            title: const Text(str.backgroundColor),
            trailing:
                ColorIndicator(color: realTimeBackgroundColor, hasBorder: true),
            onTap: () async => ref
                .read(realTimeBackgroundColorProvider.notifier)
                .set(await _pickColor(context, realTimeBackgroundColor)),
          ),
          ListTile(
            leading: const Icon(Icons.show_chart_outlined),
            title: const Text(str.lineColor),
            trailing: ColorIndicator(color: realTimeLineColor, hasBorder: true),
            onTap: () async => ref
                .read(realTimeLineColorProvider.notifier)
                .set(await _pickColor(context, realTimeLineColor)),
          ),
          ListTile(
            leading: const Icon(Icons.grid_on_outlined),
            title: const Text(str.gridColor),
            trailing: ColorIndicator(color: realTimeGridColor, hasBorder: true),
            onTap: () async => ref
                .read(realTimeGridColorProvider.notifier)
                .set(await _pickColor(context, realTimeGridColor)),
          ),
          ListTile(
            leading: const Icon(Icons.border_horizontal_outlined),
            title: const Text(str.horizontalLine),
            trailing: SegmentedButton(
              segments: _lineTypeSegments,
              selected: {ref.watch(realTimeHorizontalLineTypeProvider)},
              onSelectionChanged: (selected) async => ref
                  .read(realTimeHorizontalLineTypeProvider.notifier)
                  .set(selected.single),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.border_vertical_outlined),
            title: const Text(str.verticalLine),
            trailing: SegmentedButton(
              segments: _lineTypeSegments,
              selected: {ref.watch(realTimeVerticalLineTypeProvider)},
              onSelectionChanged: (selected) async => ref
                  .read(realTimeVerticalLineTypeProvider.notifier)
                  .set(selected.single),
            ),
          ),
          SwitchListTile.adaptive(
            secondary: const Icon(Icons.linear_scale_outlined),
            title: const Text(str.showDots),
            value: ref.watch(realTimeShowDotsProvider),
            onChanged: ref.read(realTimeShowDotsProvider.notifier).set,
          ),
          const _SectionTitle(str.history),
          SwitchListTile.adaptive(
            secondary: const Icon(Icons.cloud_upload_outlined),
            title: const Text(str.autoUpload),
            value: ref.watch(historyAutoUploadProvider),
            onChanged: ref.read(historyAutoUploadProvider.notifier).set,
          ),
          const _SectionTitle(str.analytics),
          SwitchListTile.adaptive(
            secondary: const Icon(Icons.cloud_upload_outlined),
            title: const Text(str.autoUpload),
            value: ref.watch(analyticsAutoUploadProvider),
            onChanged: ref.read(analyticsAutoUploadProvider.notifier).set,
          ),
          const _SectionTitle(str.devTools),
          SwitchListTile.adaptive(
            secondary: const Icon(Icons.device_hub_outlined),
            title: const Text(str.fakeDevice),
            value: ref.watch(fakeDeviceOnProvider),
            onChanged: ref.read(fakeDeviceOnProvider.notifier).set,
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

  static const _padding =
      EdgeInsetsDirectional.only(top: 24, bottom: 10, start: 24, end: 24);

  final String title;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    final textStyle = Theme.of(context).textTheme.labelLarge;

    return Padding(
      padding: _padding,
      child: Text(title, style: textStyle!.copyWith(color: color)),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty("title", title));
  }
}
