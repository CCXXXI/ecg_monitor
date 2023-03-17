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
    required this.durationS,
    required this.backgroundColor,
    required this.lineColor,
    required this.gridColor,
    required this.horizontalLineType,
    required this.verticalLineType,
    required this.showDots,
  }) : super(key: key);

  final String title;

  final List<FlSpot> points;

  final double durationS;

  final Color backgroundColor;

  final Color lineColor;

  final Color gridColor;

  final LineType horizontalLineType;

  final LineType verticalLineType;

  final bool showDots;

  @override
  Widget build(BuildContext _context) => __chart(
        _context,
        title: title,
        points: points,
        durationS: durationS,
        backgroundColor: backgroundColor,
        lineColor: lineColor,
        gridColor: gridColor,
        horizontalLineType: horizontalLineType,
        verticalLineType: verticalLineType,
        showDots: showDots,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
    properties.add(DiagnosticsProperty<List<FlSpot>>('points', points));
    properties.add(DoubleProperty('durationS', durationS));
    properties
        .add(DiagnosticsProperty<Color>('backgroundColor', backgroundColor));
    properties.add(DiagnosticsProperty<Color>('lineColor', lineColor));
    properties.add(DiagnosticsProperty<Color>('gridColor', gridColor));
    properties
        .add(EnumProperty<LineType>('horizontalLineType', horizontalLineType));
    properties
        .add(EnumProperty<LineType>('verticalLineType', verticalLineType));
    properties.add(DiagnosticsProperty<bool>('showDots', showDots));
  }
}

class Chart3Lead extends StatelessWidget {
  const Chart3Lead({
    Key? key,
    required this.pointsI,
    required this.pointsII,
    required this.pointsIII,
    required this.durationS,
    required this.backgroundColor,
    required this.lineColor,
    required this.gridColor,
    required this.horizontalLineType,
    required this.verticalLineType,
    required this.showDots,
  }) : super(key: key);

  final List<FlSpot> pointsI;

  final List<FlSpot> pointsII;

  final List<FlSpot> pointsIII;

  final double durationS;

  final Color backgroundColor;

  final Color lineColor;

  final Color gridColor;

  final LineType horizontalLineType;

  final LineType verticalLineType;

  final bool showDots;

  @override
  Widget build(BuildContext _context) => _chart3Lead(
        _context,
        pointsI: pointsI,
        pointsII: pointsII,
        pointsIII: pointsIII,
        durationS: durationS,
        backgroundColor: backgroundColor,
        lineColor: lineColor,
        gridColor: gridColor,
        horizontalLineType: horizontalLineType,
        verticalLineType: verticalLineType,
        showDots: showDots,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<List<FlSpot>>('pointsI', pointsI));
    properties.add(DiagnosticsProperty<List<FlSpot>>('pointsII', pointsII));
    properties.add(DiagnosticsProperty<List<FlSpot>>('pointsIII', pointsIII));
    properties.add(DoubleProperty('durationS', durationS));
    properties
        .add(DiagnosticsProperty<Color>('backgroundColor', backgroundColor));
    properties.add(DiagnosticsProperty<Color>('lineColor', lineColor));
    properties.add(DiagnosticsProperty<Color>('gridColor', gridColor));
    properties
        .add(EnumProperty<LineType>('horizontalLineType', horizontalLineType));
    properties
        .add(EnumProperty<LineType>('verticalLineType', verticalLineType));
    properties.add(DiagnosticsProperty<bool>('showDots', showDots));
  }
}
