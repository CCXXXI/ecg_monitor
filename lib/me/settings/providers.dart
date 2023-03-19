import "package:flutter/material.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../database.dart";
import '../../utils/strings.dart';
import "data_types.dart";

part "providers.g.dart";

@riverpod
class _Bool extends _$Bool {
  @override
  bool build(String key, bool defaultValue) =>
      prefs.getBool(key) ?? defaultValue;

  // ignore: avoid_positional_boolean_parameters
  Future<void> set(bool value) async {
    state = value;
    await prefs.setBool(key, value);
  }
}

@riverpod
class _Double extends _$Double {
  @override
  double build(String key, double defaultValue) =>
      prefs.getDouble(key) ?? defaultValue;

  Future<void> set(double value) async {
    state = value;
    await prefs.setDouble(key, value);
  }
}

@riverpod
class _Color extends _$Color {
  @override
  Color build(String key, Color defaultColor) =>
      Color(prefs.getInt(key) ?? defaultColor.value);

  Future<void> set(Color color) async {
    state = color;
    await prefs.setInt(key, color.value);
  }
}

@riverpod
class _LineType extends _$LineType {
  @override
  LineType build(String key, LineType defaultValue) =>
      LineType.values[prefs.getInt(key) ?? defaultValue.index];

  Future<void> set(LineType value) async {
    state = value;
    await prefs.setInt(key, value.index);
  }
}

// region realTime settings
final realTimePortraitDurationProvider = _doubleProvider(
  "${K.realTime}.${K.portraitDuration}",
  ChartSettingsData.simple.portraitDuration,
);
final realTimeLandscapeDurationProvider = _doubleProvider(
  "${K.realTime}.${K.landscapeDuration}",
  ChartSettingsData.simple.landscapeDuration,
);
final realTimeBackgroundColorProvider = _colorProvider(
  "${K.realTime}.${K.backgroundColor}",
  ChartSettingsData.simple.backgroundColor,
);
final realTimeLineColorProvider = _colorProvider(
  "${K.realTime}.${K.lineColor}",
  ChartSettingsData.simple.lineColor,
);
final realTimeGridColorProvider = _colorProvider(
  "${K.realTime}.${K.gridColor}",
  ChartSettingsData.simple.gridColor,
);
final realTimeHorizontalLineTypeProvider = _lineTypeProvider(
  "${K.realTime}.${K.horizontalLineType}",
  ChartSettingsData.simple.horizontalLineType,
);
final realTimeVerticalLineTypeProvider = _lineTypeProvider(
  "${K.realTime}.${K.verticalLineType}",
  ChartSettingsData.simple.verticalLineType,
);
final realTimeShowDotsProvider = _boolProvider(
  "${K.realTime}.${K.showDots}",
  ChartSettingsData.simple.showDots,
);

@riverpod
class RealTimeChartSettings extends _$RealTimeChartSettings {
  @override
  ChartSettingsData build() => ChartSettingsData(
        portraitDuration: ref.watch(realTimePortraitDurationProvider),
        landscapeDuration: ref.watch(realTimeLandscapeDurationProvider),
        backgroundColor: ref.watch(realTimeBackgroundColorProvider),
        lineColor: ref.watch(realTimeLineColorProvider),
        gridColor: ref.watch(realTimeGridColorProvider),
        horizontalLineType: ref.watch(realTimeHorizontalLineTypeProvider),
        verticalLineType: ref.watch(realTimeVerticalLineTypeProvider),
        showDots: ref.watch(realTimeShowDotsProvider),
      );

  Future<void> set(ChartSettingsData chartSettingsData) async {
    await ref
        .read(_realTimeChartSettingsSetterProvider.notifier)
        .set(chartSettingsData);
  }
}

/// [RealTimeChartSettings.ref] is invalidated when any of the settings changes.
/// So we need to use a separate provider to set the settings.
@riverpod
class _RealTimeChartSettingsSetter extends _$RealTimeChartSettingsSetter {
  @override
  void build() {}

  Future<void> set(ChartSettingsData chartSettingsData) async {
    await ref
        .read(realTimePortraitDurationProvider.notifier)
        .set(chartSettingsData.portraitDuration);
    await ref
        .read(realTimeLandscapeDurationProvider.notifier)
        .set(chartSettingsData.landscapeDuration);
    await ref
        .read(realTimeBackgroundColorProvider.notifier)
        .set(chartSettingsData.backgroundColor);
    await ref
        .read(realTimeLineColorProvider.notifier)
        .set(chartSettingsData.lineColor);
    await ref
        .read(realTimeGridColorProvider.notifier)
        .set(chartSettingsData.gridColor);
    await ref
        .read(realTimeHorizontalLineTypeProvider.notifier)
        .set(chartSettingsData.horizontalLineType);
    await ref
        .read(realTimeVerticalLineTypeProvider.notifier)
        .set(chartSettingsData.verticalLineType);
    await ref
        .read(realTimeShowDotsProvider.notifier)
        .set(chartSettingsData.showDots);
  }
}

final refreshRateHzProvider = _doubleProvider(
  K.refreshRateHz,
  30,
);
final minDistanceProvider = _doubleProvider(
  K.minDistance,
  .5,
);
// endregion

// region history settings
final historyAutoUploadProvider = _boolProvider(
  "${K.history}.${K.autoUpload}",
  true,
);

final historyPortraitDurationProvider = _doubleProvider(
  "${K.history}.${K.portraitDuration}",
  ChartSettingsData.professional.portraitDuration,
);
final historyLandscapeDurationProvider = _doubleProvider(
  "${K.history}.${K.landscapeDuration}",
  ChartSettingsData.professional.landscapeDuration,
);
final historyBackgroundColorProvider = _colorProvider(
  "${K.history}.${K.backgroundColor}",
  ChartSettingsData.professional.backgroundColor,
);
final historyLineColorProvider = _colorProvider(
  "${K.history}.${K.lineColor}",
  ChartSettingsData.professional.lineColor,
);
final historyGridColorProvider = _colorProvider(
  "${K.history}.${K.gridColor}",
  ChartSettingsData.professional.gridColor,
);
final historyHorizontalLineTypeProvider = _lineTypeProvider(
  "${K.history}.${K.horizontalLineType}",
  ChartSettingsData.professional.horizontalLineType,
);
final historyVerticalLineTypeProvider = _lineTypeProvider(
  "${K.history}.${K.verticalLineType}",
  ChartSettingsData.professional.verticalLineType,
);
final historyShowDotsProvider = _boolProvider(
  "${K.history}.${K.showDots}",
  ChartSettingsData.professional.showDots,
);

@riverpod
class HistoryChartSettings extends _$HistoryChartSettings {
  @override
  ChartSettingsData build() => ChartSettingsData(
        portraitDuration: ref.watch(historyPortraitDurationProvider),
        landscapeDuration: ref.watch(historyLandscapeDurationProvider),
        backgroundColor: ref.watch(historyBackgroundColorProvider),
        lineColor: ref.watch(historyLineColorProvider),
        gridColor: ref.watch(historyGridColorProvider),
        horizontalLineType: ref.watch(historyHorizontalLineTypeProvider),
        verticalLineType: ref.watch(historyVerticalLineTypeProvider),
        showDots: ref.watch(historyShowDotsProvider),
      );

  Future<void> set(ChartSettingsData chartSettingsData) async {
    await ref
        .read(_historyChartSettingsSetterProvider.notifier)
        .set(chartSettingsData);
  }
}

@riverpod
class _HistoryChartSettingsSetter extends _$HistoryChartSettingsSetter {
  @override
  void build() {}

  Future<void> set(ChartSettingsData chartSettingsData) async {
    await ref
        .read(historyPortraitDurationProvider.notifier)
        .set(chartSettingsData.portraitDuration);
    await ref
        .read(historyLandscapeDurationProvider.notifier)
        .set(chartSettingsData.landscapeDuration);
    await ref
        .read(historyBackgroundColorProvider.notifier)
        .set(chartSettingsData.backgroundColor);
    await ref
        .read(historyLineColorProvider.notifier)
        .set(chartSettingsData.lineColor);
    await ref
        .read(historyGridColorProvider.notifier)
        .set(chartSettingsData.gridColor);
    await ref
        .read(historyHorizontalLineTypeProvider.notifier)
        .set(chartSettingsData.horizontalLineType);
    await ref
        .read(historyVerticalLineTypeProvider.notifier)
        .set(chartSettingsData.verticalLineType);
    await ref
        .read(historyShowDotsProvider.notifier)
        .set(chartSettingsData.showDots);
  }
}
// endregion

// region analytics settings
final analyticsAutoGenerateProvider = _boolProvider(
  "${K.analytics}.${K.autoGenerate}",
  true,
);
final analyticsAutoUploadProvider = _boolProvider(
  "${K.analytics}.${K.autoUpload}",
  true,
);
// endregion

// region devTools settings
final showDevToolsProvider = _boolProvider(
  K.showDevTools,
  false,
);
final fakeDeviceOnProvider = _boolProvider(
  K.fakeDeviceOn,
  false,
);
// endregion
