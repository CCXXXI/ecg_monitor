import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:quiver/time.dart";

part "data_types.freezed.dart";

enum LineType { hide, simple, full }

@freezed
class ChartSettingsData with _$ChartSettingsData {
  const factory ChartSettingsData({
    required Duration portraitDuration,
    required Duration landscapeDuration,
    required Color gridColor,
    required LineType horizontalLineType,
    required LineType verticalLineType,
    required bool showDots,
  }) = _ChartSettingsData;

  static final simple = ChartSettingsData(
    portraitDuration: aSecond * 1.5,
    landscapeDuration: aSecond * 4,
    // Color(Colors.red.value) != Colors.red
    // The former is a Color object, the latter is a MaterialColor object.
    // The color read from SharedPreferences is a Color object.
    // So we must use Color here to make them equal.
    gridColor: Color(Colors.red.value),
    horizontalLineType: LineType.simple,
    verticalLineType: LineType.hide,
    showDots: false,
  );

  static final professional = simple.copyWith(
    horizontalLineType: LineType.full,
    verticalLineType: LineType.full,
  );

  /// For [ButtonSegment.value] only.
  static final custom = simple.copyWith(showDots: true);
}
