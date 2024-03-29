// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_settings.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class ChartSettings extends StatelessWidget {
  const ChartSettings({
    Key? key,
    required this.chartSettingsData,
    required this.onChartSettingsChanged,
    required this.portraitDuration,
    required this.onPortraitDurationChanged,
    required this.landscapeDuration,
    required this.onLandscapeDurationChanged,
    required this.gridColor,
    required this.onGridColorChanged,
    required this.horizontalLineType,
    required this.onHorizontalLineTypeChanged,
    required this.verticalLineType,
    required this.onVerticalLineTypeChanged,
    required this.showDots,
    required this.onShowDotsChanged,
    required this.showDevTools,
  }) : super(key: key);

  final ChartSettingsData chartSettingsData;

  final void Function(ChartSettingsData) onChartSettingsChanged;

  final Duration portraitDuration;

  final void Function(Duration) onPortraitDurationChanged;

  final Duration landscapeDuration;

  final void Function(Duration) onLandscapeDurationChanged;

  final Color gridColor;

  final void Function(Color) onGridColorChanged;

  final LineType horizontalLineType;

  final void Function(LineType) onHorizontalLineTypeChanged;

  final LineType verticalLineType;

  final void Function(LineType) onVerticalLineTypeChanged;

  final bool showDots;

  final void Function(bool) onShowDotsChanged;

  final bool showDevTools;

  @override
  Widget build(BuildContext _context) => _chartSettings(
        _context,
        chartSettingsData: chartSettingsData,
        onChartSettingsChanged: onChartSettingsChanged,
        portraitDuration: portraitDuration,
        onPortraitDurationChanged: onPortraitDurationChanged,
        landscapeDuration: landscapeDuration,
        onLandscapeDurationChanged: onLandscapeDurationChanged,
        gridColor: gridColor,
        onGridColorChanged: onGridColorChanged,
        horizontalLineType: horizontalLineType,
        onHorizontalLineTypeChanged: onHorizontalLineTypeChanged,
        verticalLineType: verticalLineType,
        onVerticalLineTypeChanged: onVerticalLineTypeChanged,
        showDots: showDots,
        onShowDotsChanged: onShowDotsChanged,
        showDevTools: showDevTools,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<ChartSettingsData>(
        'chartSettingsData', chartSettingsData));
    properties.add(DiagnosticsProperty<void Function(ChartSettingsData)>(
        'onChartSettingsChanged', onChartSettingsChanged));
    properties.add(
        DiagnosticsProperty<Duration>('portraitDuration', portraitDuration));
    properties.add(DiagnosticsProperty<void Function(Duration)>(
        'onPortraitDurationChanged', onPortraitDurationChanged));
    properties.add(
        DiagnosticsProperty<Duration>('landscapeDuration', landscapeDuration));
    properties.add(DiagnosticsProperty<void Function(Duration)>(
        'onLandscapeDurationChanged', onLandscapeDurationChanged));
    properties.add(DiagnosticsProperty<Color>('gridColor', gridColor));
    properties.add(DiagnosticsProperty<void Function(Color)>(
        'onGridColorChanged', onGridColorChanged));
    properties
        .add(EnumProperty<LineType>('horizontalLineType', horizontalLineType));
    properties.add(DiagnosticsProperty<void Function(LineType)>(
        'onHorizontalLineTypeChanged', onHorizontalLineTypeChanged));
    properties
        .add(EnumProperty<LineType>('verticalLineType', verticalLineType));
    properties.add(DiagnosticsProperty<void Function(LineType)>(
        'onVerticalLineTypeChanged', onVerticalLineTypeChanged));
    properties.add(DiagnosticsProperty<bool>('showDots', showDots));
    properties.add(DiagnosticsProperty<void Function(bool)>(
        'onShowDotsChanged', onShowDotsChanged));
    properties.add(DiagnosticsProperty<bool>('showDevTools', showDevTools));
  }
}
