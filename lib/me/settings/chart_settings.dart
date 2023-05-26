import "package:duration_picker/duration_picker.dart";
import "package:flex_color_picker/flex_color_picker.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:quiver/time.dart";

import "../../generated/l10n.dart";
import "data_types.dart";

part "chart_settings.g.dart";

extension DurationToSecondsString on Duration {
  String toMsString() => "$inMilliseconds ms";
}

const chartDurationLowerLimit = aSecond;
final chartDurationUpperLimit = aSecond * 10;

@swidget
Widget _chartSettings(
  BuildContext context, {
  required ChartSettingsData chartSettingsData,
  required void Function(ChartSettingsData) onChartSettingsChanged,
  required Duration portraitDuration,
  required void Function(Duration) onPortraitDurationChanged,
  required Duration landscapeDuration,
  required void Function(Duration) onLandscapeDurationChanged,
  required Color gridColor,
  required void Function(Color) onGridColorChanged,
  required LineType horizontalLineType,
  required void Function(LineType) onHorizontalLineTypeChanged,
  required LineType verticalLineType,
  required void Function(LineType) onVerticalLineTypeChanged,
  required bool showDots,
  // ignore: avoid_positional_boolean_parameters
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

  Future<Duration> pickDuration(Duration initialDuration) async {
    final duration = await showDurationPicker(
      context: context,
      initialTime: initialDuration,
      baseUnit: BaseUnit.millisecond,
    );

    if (duration == null) {
      return initialDuration;
    }

    return Duration(
      milliseconds: duration.inMilliseconds.clamp(
        chartDurationLowerLimit.inMilliseconds,
        chartDurationUpperLimit.inMilliseconds,
      ),
    );
  }

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
        trailing: Text(portraitDuration.toMsString()),
        onTap: () async => onPortraitDurationChanged(
          await pickDuration(portraitDuration),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.stay_primary_landscape_outlined),
        title: Text(s.landscapeDuration),
        trailing: Text(landscapeDuration.toMsString()),
        onTap: () async => onLandscapeDurationChanged(
          await pickDuration(landscapeDuration),
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
