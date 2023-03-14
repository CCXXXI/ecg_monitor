import "dart:math";

import "package:fl_chart/fl_chart.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

import "../me/settings/data_types.dart";
import "../utils/constants/strings.dart" as str;

class Chart extends StatelessWidget {
  const Chart({
    required this.title,
    required this.points,
    required this.durationS,
    required this.backgroundColor,
    required this.lineColor,
    required this.gridColor,
    required this.horizontalLineType,
    required this.verticalLineType,
    required this.showDots,
    super.key,
  });

  final String title;
  final List<FlSpot> points;
  final double durationS;
  final Color backgroundColor;
  final Color lineColor;
  final Color gridColor;
  final LineType horizontalLineType;
  final LineType verticalLineType;
  final bool showDots;

  @visibleForTesting
  static const maxIntervalCountPortrait = 5;

  @visibleForTesting
  static const maxIntervalCountLandscape = 10;

  static const smallXInterval = 40.0;
  static const _largeXInterval = smallXInterval * 5;
  static const smallYInterval = .1;
  static const _largeYInterval = smallYInterval * 5;

  static const _thickLineWidth = 1.0;
  static const _thinLineWidth = .5;

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    final durationMs = durationS * Duration.millisecondsPerSecond;
    final drawHorizontalLine = horizontalLineType != LineType.hide;
    final drawVerticalLine = verticalLineType != LineType.hide;

    final bottomTitles = AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        interval: getIntervalMs(durationS, isPortrait: isPortrait),
        getTitlesWidget: (value, meta) => value == meta.max || value == meta.min
            ? const SizedBox.shrink()
            : SideTitleWidget(
                axisSide: meta.axisSide,
                child: Text(msToTimeString(value)),
              ),
      ),
    );

    final leftTitles = AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 35,
        getTitlesWidget: (value, meta) => value == meta.max || value == meta.min
            ? const SizedBox.shrink()
            : SideTitleWidget(
                axisSide: meta.axisSide,
                child: Text(value.toStringAsFixed(1)),
              ),
      ),
    );

    return Column(
      children: [
        Text(title),
        Expanded(
          child: LineChart(
            swapAnimationDuration: Duration.zero, // disable animation
            LineChartData(
              minX: points.isEmpty ? null : points.last.x - durationMs,
              maxX: points.isEmpty ? null : points.last.x,
              minY: points.isEmpty
                  ? null
                  : points.map((p) => p.y).reduce(min) - smallYInterval,
              maxY: points.isEmpty
                  ? null
                  : points.map((p) => p.y).reduce(max) + smallYInterval,
              backgroundColor: backgroundColor,
              titlesData: FlTitlesData(
                topTitles: AxisTitles(),
                bottomTitles: bottomTitles,
                leftTitles: leftTitles,
                rightTitles: AxisTitles(),
              ),
              borderData: FlBorderData(show: false),
              gridData: FlGridData(
                show: drawHorizontalLine || drawVerticalLine,
                drawHorizontalLine: drawHorizontalLine,
                drawVerticalLine: drawVerticalLine,
                horizontalInterval: horizontalLineType == LineType.full
                    ? smallYInterval
                    : _largeYInterval,
                verticalInterval: verticalLineType == LineType.full
                    ? smallXInterval
                    : _largeXInterval,
                getDrawingHorizontalLine: (value) => FlLine(
                  color: gridColor,
                  strokeWidth: _getStrokeWidth(value, isHorizontal: true),
                ),
                getDrawingVerticalLine: (value) => FlLine(
                  color: gridColor,
                  strokeWidth: _getStrokeWidth(value, isHorizontal: false),
                ),
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: points,
                  color: lineColor,
                  preventCurveOverShooting: true,
                  dotData: FlDotData(
                    show: showDots,
                    getDotPainter: (spot, xPercentage, bar, index) =>
                        FlDotSquarePainter(color: backgroundColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @visibleForTesting
  static double getIntervalMs(double durationS, {required bool isPortrait}) {
    final intervalCount =
        isPortrait ? maxIntervalCountPortrait : maxIntervalCountLandscape;
    final intervalS = (durationS / intervalCount).ceilToDouble();
    final intervalMs = intervalS * Duration.millisecondsPerSecond;
    return intervalMs;
  }

  static double _getStrokeWidth(double value, {required bool isHorizontal}) {
    final largeInterval = isHorizontal ? _largeYInterval : _largeXInterval;
    final smallInterval = isHorizontal ? smallYInterval : smallXInterval;
    return value % largeInterval < smallInterval / 2
        ? _thickLineWidth
        : _thinLineWidth;
  }

  @visibleForTesting
  static String msToTimeString(double milliseconds) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(milliseconds.toInt());
    return "${dateTime.hour.toString().padLeft(2, "0")}"
        ":${dateTime.minute.toString().padLeft(2, "0")}"
        ":${dateTime.second.toString().padLeft(2, "0")}";
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty("title", title))
      ..add(IterableProperty<FlSpot>("points", points))
      ..add(DoubleProperty("durationS", durationS))
      ..add(ColorProperty("backgroundColor", backgroundColor))
      ..add(ColorProperty("lineColor", lineColor))
      ..add(ColorProperty("gridColor", gridColor))
      ..add(EnumProperty<LineType>("horizontalLineType", horizontalLineType))
      ..add(EnumProperty<LineType>("verticalLineType", verticalLineType))
      ..add(DiagnosticsProperty<bool>("showDots", showDots));
  }
}

class Chart3Lead extends StatelessWidget {
  const Chart3Lead({
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
    super.key,
  });

  static const _titles = [str.leadI, str.leadII, str.leadIII];

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
  Widget build(BuildContext context) {
    final children = [
      for (var i = 0; i < 3; i++)
        Expanded(
          child: Chart(
            title: _titles[i],
            points: [pointsI, pointsII, pointsIII][i],
            durationS: durationS,
            backgroundColor: backgroundColor,
            lineColor: lineColor,
            gridColor: gridColor,
            horizontalLineType: horizontalLineType,
            verticalLineType: verticalLineType,
            showDots: showDots,
          ),
        )
    ];

    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return isPortrait ? Column(children: children) : Row(children: children);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(IterableProperty<FlSpot>("pointsI", pointsI))
      ..add(IterableProperty<FlSpot>("pointsII", pointsII))
      ..add(IterableProperty<FlSpot>("pointsIII", pointsIII))
      ..add(DoubleProperty("durationS", durationS))
      ..add(ColorProperty("backgroundColor", backgroundColor))
      ..add(ColorProperty("lineColor", lineColor))
      ..add(ColorProperty("gridColor", gridColor))
      ..add(EnumProperty<LineType>("horizontalLineType", horizontalLineType))
      ..add(EnumProperty<LineType>("verticalLineType", verticalLineType))
      ..add(DiagnosticsProperty<bool>("showDots", showDots));
  }
}
