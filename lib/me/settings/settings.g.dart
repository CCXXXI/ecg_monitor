// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext _context) => __sectionTitle(
        _context,
        title,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
  }
}

class _ChartSettings extends StatelessWidget {
  const _ChartSettings({
    Key? key,
    required this.chartSettingsData,
    required this.onChartSettingsChanged,
    required this.portraitDuration,
    required this.onPortraitDurationChanged,
    required this.landscapeDuration,
    required this.onLandscapeDurationChanged,
    required this.backgroundColor,
    required this.onBackgroundColorChanged,
    required this.lineColor,
    required this.onLineColorChanged,
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

  final double portraitDuration;

  final void Function(double) onPortraitDurationChanged;

  final double landscapeDuration;

  final void Function(double) onLandscapeDurationChanged;

  final Color backgroundColor;

  final void Function(Color) onBackgroundColorChanged;

  final Color lineColor;

  final void Function(Color) onLineColorChanged;

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
  Widget build(BuildContext _context) => __chartSettings(
        _context,
        chartSettingsData: chartSettingsData,
        onChartSettingsChanged: onChartSettingsChanged,
        portraitDuration: portraitDuration,
        onPortraitDurationChanged: onPortraitDurationChanged,
        landscapeDuration: landscapeDuration,
        onLandscapeDurationChanged: onLandscapeDurationChanged,
        backgroundColor: backgroundColor,
        onBackgroundColorChanged: onBackgroundColorChanged,
        lineColor: lineColor,
        onLineColorChanged: onLineColorChanged,
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
    properties.add(DoubleProperty('portraitDuration', portraitDuration));
    properties.add(DiagnosticsProperty<void Function(double)>(
        'onPortraitDurationChanged', onPortraitDurationChanged));
    properties.add(DoubleProperty('landscapeDuration', landscapeDuration));
    properties.add(DiagnosticsProperty<void Function(double)>(
        'onLandscapeDurationChanged', onLandscapeDurationChanged));
    properties
        .add(DiagnosticsProperty<Color>('backgroundColor', backgroundColor));
    properties.add(DiagnosticsProperty<void Function(Color)>(
        'onBackgroundColorChanged', onBackgroundColorChanged));
    properties.add(DiagnosticsProperty<Color>('lineColor', lineColor));
    properties.add(DiagnosticsProperty<void Function(Color)>(
        'onLineColorChanged', onLineColorChanged));
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

class Settings extends ConsumerWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _settings(
        _context,
        _ref,
      );
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loggerLevelHash() => r'ebaf55b5293d9c79705651a69fc8855f7b1e8077';

/// See also [_LoggerLevel].
@ProviderFor(_LoggerLevel)
final _loggerLevelProvider =
    AutoDisposeNotifierProvider<_LoggerLevel, Level>.internal(
  _LoggerLevel.new,
  name: r'_loggerLevelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loggerLevelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoggerLevel = AutoDisposeNotifier<Level>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
