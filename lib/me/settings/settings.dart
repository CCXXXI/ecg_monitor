import "package:flex_color_picker/flex_color_picker.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:logging/logging.dart";
import "package:restart_app/restart_app.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:universal_io/io.dart";

import "../../database.dart";
import "../../generated/l10n.dart";
import "../../utils/constants/keys.dart" as key;
import "../../utils/constants/strings.dart";
import "../../utils/constants/urls.dart" as url;
import "../../utils/dio.dart";
import "../../utils/logger.dart";
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

  Future<void> setIndex(int index) => set(loggerLevels[index]);
}

@swidget
Widget __sectionTitle(BuildContext context, String title) {
  const padding = EdgeInsetsDirectional.fromSTEB(24, 24, 24, 10);
  final color = Theme.of(context).colorScheme.primary;
  final style = Theme.of(context).textTheme.labelLarge!.copyWith(color: color);

  return Padding(padding: padding, child: Text(title, style: style));
}

@swidget
Widget __chartSettings(
  BuildContext context, {
  required ChartSettingsData chartSettingsData,
  required void Function(ChartSettingsData) onChartSettingsChanged,
  required double portraitDuration,
  required void Function(double) onPortraitDurationChanged,
  required double landscapeDuration,
  required void Function(double) onLandscapeDurationChanged,
  required Color backgroundColor,
  required void Function(Color) onBackgroundColorChanged,
  required Color lineColor,
  required void Function(Color) onLineColorChanged,
  required Color gridColor,
  required void Function(Color) onGridColorChanged,
  required LineType horizontalLineType,
  required void Function(LineType) onHorizontalLineTypeChanged,
  required LineType verticalLineType,
  required void Function(LineType) onVerticalLineTypeChanged,
  required bool showDots,
  required void Function(bool) onShowDotsChanged,
  required bool showDevTools,
}) {
  final s = S.of(context);

  Future<Color> pickColor(Color initialColor) async => showColorPickerDialog(
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

  final lineTypeSegments = [
    ButtonSegment(
      value: LineType.hide,
      icon: const Icon(Icons.visibility_off_outlined),
      label: Text(s.lineTypeHide),
    ),
    ButtonSegment(
      value: LineType.simple,
      icon: const Icon(Icons.grid_3x3_outlined),
      label: Text(s.lineTypeSimple),
    ),
    ButtonSegment(
      value: LineType.full,
      icon: const Icon(Icons.grid_4x4_outlined),
      label: Text(s.lineTypeFull),
    ),
  ];

  final portraitDurationString = "${portraitDuration.toStringAsFixed(0)} s";
  final landscapeDurationString = "${landscapeDuration.toStringAsFixed(0)} s";

  return Column(
    children: [
      ListTile(
        leading: const Icon(Icons.monitor_heart_outlined),
        title: Text(s.style),
        trailing: SegmentedButton(
          segments: [
            ButtonSegment(
              value: ChartSettingsData.simple,
              icon: const Icon(Icons.square_outlined),
              label: Text(s.simple),
            ),
            ButtonSegment(
              value: ChartSettingsData.professional,
              icon: const Icon(Icons.grid_on_outlined),
              label: Text(s.professional),
            ),
            ButtonSegment(
              value: ChartSettingsData.custom,
              icon: const Icon(Icons.tune_outlined),
              label: Text(s.custom),
              enabled: false,
            ),
          ],
          selected: {
            if (chartSettingsData == ChartSettingsData.professional ||
                chartSettingsData == ChartSettingsData.simple)
              chartSettingsData
            else
              ChartSettingsData.custom
          },
          onSelectionChanged: (selected) =>
              onChartSettingsChanged(selected.single),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.stay_primary_portrait_outlined),
        title: Text(s.portraitDuration),
        subtitle: Text(portraitDurationString),
        trailing: SizedBox(
          width: 200,
          child: Slider.adaptive(
            value: portraitDuration,
            onChanged: onPortraitDurationChanged,
            min: 1,
            max: 10,
            divisions: 9,
            label: portraitDurationString,
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.stay_primary_landscape_outlined),
        title: Text(s.landscapeDuration),
        subtitle: Text(landscapeDurationString),
        trailing: SizedBox(
          width: 200,
          child: Slider.adaptive(
            value: landscapeDuration,
            onChanged: onLandscapeDurationChanged,
            min: 1,
            max: 10,
            divisions: 9,
            label: landscapeDurationString,
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.color_lens_outlined),
        title: Text(s.backgroundColor),
        trailing: ColorIndicator(color: backgroundColor, hasBorder: true),
        onTap: () async => onBackgroundColorChanged(
          await pickColor(backgroundColor),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.show_chart_outlined),
        title: Text(s.lineColor),
        trailing: ColorIndicator(color: lineColor, hasBorder: true),
        onTap: () async => onLineColorChanged(
          await pickColor(lineColor),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.grid_on_outlined),
        title: Text(s.gridColor),
        trailing: ColorIndicator(color: gridColor, hasBorder: true),
        onTap: () async => onGridColorChanged(
          await pickColor(gridColor),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.border_horizontal_outlined),
        title: Text(s.horizontalLines),
        trailing: SegmentedButton(
          segments: lineTypeSegments,
          selected: {horizontalLineType},
          onSelectionChanged: (selected) =>
              onHorizontalLineTypeChanged(selected.single),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.border_vertical_outlined),
        title: Text(s.verticalLines),
        trailing: SegmentedButton(
          segments: lineTypeSegments,
          selected: {verticalLineType},
          onSelectionChanged: (selected) =>
              onVerticalLineTypeChanged(selected.single),
        ),
      ),
      if (showDevTools)
        SwitchListTile.adaptive(
          secondary: const Icon(Icons.linear_scale_outlined),
          title: Text(s.showDots),
          value: showDots,
          onChanged: onShowDotsChanged,
        ),
    ],
  );
}

@cwidget
Widget _settings(BuildContext context, WidgetRef ref) {
  final s = S.of(context);

  // realTime settings
  final realTimeRefreshRateHz = ref.watch(refreshRateHzProvider);
  final realTimeMinDistance = ref.watch(minDistanceProvider);

  final realTimeRefreshRateHzString =
      "${realTimeRefreshRateHz.toStringAsFixed(0)} Hz";
  final realTimeMinDistanceString = realTimeMinDistance.toStringAsFixed(1);

  // devTools settings
  final showDevTools = ref.watch(showDevToolsProvider);
  final loggerLevel = ref.watch(_loggerLevelProvider);
  final loggerLevelIndex = loggerLevels.indexOf(loggerLevel);

  return Scaffold(
    appBar: AppBar(title: Text(s.settings)),
    body: ListView(
      children: [
        _SectionTitle(s.realTime),
        _ChartSettings(
          chartSettingsData: ref.watch(realTimeChartSettingsProvider),
          onChartSettingsChanged:
              ref.read(realTimeChartSettingsProvider.notifier).set,
          portraitDuration: ref.watch(realTimePortraitDurationProvider),
          onPortraitDurationChanged:
              ref.read(realTimePortraitDurationProvider.notifier).set,
          landscapeDuration: ref.watch(realTimeLandscapeDurationProvider),
          onLandscapeDurationChanged:
              ref.read(realTimeLandscapeDurationProvider.notifier).set,
          backgroundColor: ref.watch(realTimeBackgroundColorProvider),
          onBackgroundColorChanged:
              ref.read(realTimeBackgroundColorProvider.notifier).set,
          lineColor: ref.watch(realTimeLineColorProvider),
          onLineColorChanged: ref.read(realTimeLineColorProvider.notifier).set,
          gridColor: ref.watch(realTimeGridColorProvider),
          onGridColorChanged: ref.read(realTimeGridColorProvider.notifier).set,
          horizontalLineType: ref.watch(realTimeHorizontalLineTypeProvider),
          onHorizontalLineTypeChanged:
              ref.read(realTimeHorizontalLineTypeProvider.notifier).set,
          verticalLineType: ref.watch(realTimeVerticalLineTypeProvider),
          onVerticalLineTypeChanged:
              ref.read(realTimeVerticalLineTypeProvider.notifier).set,
          showDots: ref.watch(realTimeShowDotsProvider),
          onShowDotsChanged: ref.read(realTimeShowDotsProvider.notifier).set,
          showDevTools: showDevTools,
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.speed_outlined),
          title: Text(s.refreshRate),
          subtitle: Text(realTimeRefreshRateHzString),
          trailing: SizedBox(
            width: 200,
            child: Slider.adaptive(
              value: realTimeRefreshRateHz,
              onChanged: ref.read(refreshRateHzProvider.notifier).set,
              min: 10,
              max: 60,
              divisions: 10,
              label: realTimeRefreshRateHzString,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.timeline_outlined),
          title: Text(s.minDistance),
          subtitle: Text(realTimeMinDistanceString),
          trailing: SizedBox(
            width: 200,
            child: Slider.adaptive(
              value: realTimeMinDistance,
              onChanged: ref.read(minDistanceProvider.notifier).set,
              divisions: 10,
              label: realTimeMinDistanceString,
            ),
          ),
        ),
        _SectionTitle(s.history),
        SwitchListTile.adaptive(
          secondary: const Icon(Icons.cloud_upload_outlined),
          title: Text(s.autoUpload),
          value: ref.watch(historyAutoUploadProvider),
          onChanged: ref.read(historyAutoUploadProvider.notifier).set,
        ),
        const Divider(),
        _ChartSettings(
          chartSettingsData: ref.watch(historyChartSettingsProvider),
          onChartSettingsChanged:
              ref.read(historyChartSettingsProvider.notifier).set,
          portraitDuration: ref.watch(historyPortraitDurationProvider),
          onPortraitDurationChanged:
              ref.read(historyPortraitDurationProvider.notifier).set,
          landscapeDuration: ref.watch(historyLandscapeDurationProvider),
          onLandscapeDurationChanged:
              ref.read(historyLandscapeDurationProvider.notifier).set,
          backgroundColor: ref.watch(historyBackgroundColorProvider),
          onBackgroundColorChanged:
              ref.read(historyBackgroundColorProvider.notifier).set,
          lineColor: ref.watch(historyLineColorProvider),
          onLineColorChanged: ref.read(historyLineColorProvider.notifier).set,
          gridColor: ref.watch(historyGridColorProvider),
          onGridColorChanged: ref.read(historyGridColorProvider.notifier).set,
          horizontalLineType: ref.watch(historyHorizontalLineTypeProvider),
          onHorizontalLineTypeChanged:
              ref.read(historyHorizontalLineTypeProvider.notifier).set,
          verticalLineType: ref.watch(historyVerticalLineTypeProvider),
          onVerticalLineTypeChanged:
              ref.read(historyVerticalLineTypeProvider.notifier).set,
          showDots: ref.watch(historyShowDotsProvider),
          onShowDotsChanged: ref.read(historyShowDotsProvider.notifier).set,
          showDevTools: showDevTools,
        ),
        _SectionTitle(s.analytics),
        SwitchListTile.adaptive(
          secondary: const Icon(Icons.analytics_outlined),
          title: Text(s.autoGenerate),
          value: ref.watch(analyticsAutoGenerateProvider),
          onChanged: ref.read(analyticsAutoGenerateProvider.notifier).set,
        ),
        SwitchListTile.adaptive(
          secondary: const Icon(Icons.cloud_upload_outlined),
          title: Text(s.autoUpload),
          value: ref.watch(analyticsAutoUploadProvider),
          onChanged: ref.read(analyticsAutoUploadProvider.notifier).set,
        ),
        _SectionTitle(s.devTools),
        SwitchListTile.adaptive(
          secondary: const Icon(Icons.developer_mode_outlined),
          title: Text(s.showDevTools),
          subtitle: showDevTools
              ? Text(
                  "${s.devToolsDesc}\n"
                  "${s.currentBuildMode(buildMode)}",
                )
              : null,
          isThreeLine: showDevTools,
          value: showDevTools,
          onChanged: (on) async {
            final restartActionAvailable = Platform.isAndroid || kIsWeb;

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(s.restartNeeded),
                action: restartActionAvailable
                    ? SnackBarAction(
                        label: s.restart,
                        onPressed: Restart.restartApp,
                      )
                    : null,
              ),
            );
            await ref.read(showDevToolsProvider.notifier).set(on);
          },
        ),
        if (showDevTools)
          SwitchListTile.adaptive(
            secondary: const Icon(Icons.device_hub_outlined),
            title: Text(s.fakeDevice),
            value: ref.watch(fakeDeviceOnProvider),
            onChanged: ref.read(fakeDeviceOnProvider.notifier).set,
          ),
        if (showDevTools)
          ListTile(
            leading: const Icon(Icons.text_snippet_outlined),
            title: Text(s.loggerLevel),
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
        if (showDevTools)
          ListTile(
            leading: const Icon(Icons.network_check_outlined),
            title: Text(s.networkTest),
            onTap: () async => dio.getUri<dynamic>(url.test),
          )
      ],
    ),
  );
}
