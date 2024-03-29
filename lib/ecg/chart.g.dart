// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _Chart extends StatelessWidget {
  const _Chart({
    Key? key,
    required this.title,
    required this.points,
    required this.duration,
    required this.gridColor,
    required this.horizontalLineType,
    required this.verticalLineType,
    required this.showDots,
    required this.beats,
  }) : super(key: key);

  final String title;

  final List<FlSpot> points;

  final Duration duration;

  final Color gridColor;

  final LineType horizontalLineType;

  final LineType verticalLineType;

  final bool showDots;

  final List<BeatData> beats;

  @override
  Widget build(BuildContext _context) => __chart(
        _context,
        title: title,
        points: points,
        duration: duration,
        gridColor: gridColor,
        horizontalLineType: horizontalLineType,
        verticalLineType: verticalLineType,
        showDots: showDots,
        beats: beats,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
    properties.add(DiagnosticsProperty<List<FlSpot>>('points', points));
    properties.add(DiagnosticsProperty<Duration>('duration', duration));
    properties.add(DiagnosticsProperty<Color>('gridColor', gridColor));
    properties
        .add(EnumProperty<LineType>('horizontalLineType', horizontalLineType));
    properties
        .add(EnumProperty<LineType>('verticalLineType', verticalLineType));
    properties.add(DiagnosticsProperty<bool>('showDots', showDots));
    properties.add(DiagnosticsProperty<List<BeatData>>('beats', beats));
  }
}

class Chart3Lead extends ConsumerWidget {
  const Chart3Lead({
    Key? key,
    required this.pointsI,
    required this.pointsII,
    required this.pointsIII,
    required this.duration,
    required this.gridColor,
    required this.horizontalLineType,
    required this.verticalLineType,
    required this.showDots,
    this.beats = const [],
  }) : super(key: key);

  final List<FlSpot> pointsI;

  final List<FlSpot> pointsII;

  final List<FlSpot> pointsIII;

  final Duration duration;

  final Color gridColor;

  final LineType horizontalLineType;

  final LineType verticalLineType;

  final bool showDots;

  final List<BeatData> beats;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _chart3Lead(
        _context,
        _ref,
        pointsI: pointsI,
        pointsII: pointsII,
        pointsIII: pointsIII,
        duration: duration,
        gridColor: gridColor,
        horizontalLineType: horizontalLineType,
        verticalLineType: verticalLineType,
        showDots: showDots,
        beats: beats,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<List<FlSpot>>('pointsI', pointsI));
    properties.add(DiagnosticsProperty<List<FlSpot>>('pointsII', pointsII));
    properties.add(DiagnosticsProperty<List<FlSpot>>('pointsIII', pointsIII));
    properties.add(DiagnosticsProperty<Duration>('duration', duration));
    properties.add(DiagnosticsProperty<Color>('gridColor', gridColor));
    properties
        .add(EnumProperty<LineType>('horizontalLineType', horizontalLineType));
    properties
        .add(EnumProperty<LineType>('verticalLineType', verticalLineType));
    properties.add(DiagnosticsProperty<bool>('showDots', showDots));
    properties.add(DiagnosticsProperty<List<BeatData>>('beats', beats));
  }
}
