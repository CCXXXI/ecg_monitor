import "package:flutter/material.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../database.dart";
import "../../utils/constants/keys.dart";
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
  "$realTime.$portraitDuration",
  ChartSettingsData.simple.portraitDuration,
);
final realTimeLandscapeDurationProvider = _doubleProvider(
  "$realTime.$landscapeDuration",
  ChartSettingsData.simple.landscapeDuration,
);
final realTimeBackgroundColorProvider = _colorProvider(
  "$realTime.$backgroundColor",
  ChartSettingsData.simple.backgroundColor,
);
final realTimeLineColorProvider = _colorProvider(
  "$realTime.$lineColor",
  ChartSettingsData.simple.lineColor,
);
final realTimeGridColorProvider = _colorProvider(
  "$realTime.$gridColor",
  ChartSettingsData.simple.gridColor,
);
final realTimeHorizontalLineTypeProvider = _lineTypeProvider(
  "$realTime.$horizontalLineType",
  ChartSettingsData.simple.horizontalLineType,
);
final realTimeVerticalLineTypeProvider = _lineTypeProvider(
  "$realTime.$verticalLineType",
  ChartSettingsData.simple.verticalLineType,
);
final realTimeShowDotsProvider = _boolProvider(
  "$realTime.$showDots",
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
  refreshRateHz,
  30,
);
final minDistanceProvider = _doubleProvider(
  minDistance,
  .5,
);
// endregion

// region history settings
final historyAutoUploadProvider = _boolProvider(
  "$history.$autoUpload",
  true,
);
// endregion

// region analytics settings
final analyticsAutoUploadProvider = _boolProvider(
  "$analytics.$autoUpload",
  true,
);
// endregion

// region devTools settings
final fakeDeviceOnProvider = _boolProvider(
  fakeDeviceOn,
  false,
);
// endregion
