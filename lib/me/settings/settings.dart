import "dart:io";

import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:logging/logging.dart";
import "package:restart_app/restart_app.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../generated/l10n.dart";
import "../../utils/database.dart";
import "../../utils/debug/logger.dart";
import "../../utils/dio.dart";
import "../../utils/strings.dart";
import "../../utils/urls.dart";
import "chart_settings.dart";
import "providers.dart";
import "section_title.dart";

part "settings.g.dart";

@riverpod
class _LoggerLevel extends _$LoggerLevel {
  @override
  Level build() {
    final index = prefs.getInt(K.loggerLevelIndex) ?? infoLevelIndex;
    return loggerLevels[index];
  }

  Future<void> set(Level level) async {
    state = level;
    Logger.root.level = level;

    final index = loggerLevels.indexOf(level);
    await prefs.setInt(K.loggerLevelIndex, index);
  }

  Future<void> setIndex(int index) => set(loggerLevels[index]);
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
        SectionTitle(s.realTime),
        ChartSettings(
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
        SectionTitle(s.history),
        SwitchListTile.adaptive(
          secondary: const Icon(Icons.cloud_upload_outlined),
          title: Text(s.autoUpload),
          value: ref.watch(historyAutoUploadProvider),
          onChanged: ref.read(historyAutoUploadProvider.notifier).set,
        ),
        const Divider(),
        ChartSettings(
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
        SectionTitle(s.analytics),
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
        SectionTitle(s.devTools),
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
            final restartActionAvailable = Platform.isAndroid;

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
            onTap: () async => dio.getUri<dynamic>(testUrl),
          )
      ],
    ),
  );
}
