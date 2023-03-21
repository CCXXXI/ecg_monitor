import "dart:math";

import "package:fl_chart/fl_chart.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";

import "../generated/l10n.dart";
import "../me/settings/data_types.dart";

part "chart.g.dart";

@visibleForTesting
const maxIntervalCountPortrait = 5;

const smallXInterval = 40.0;
const smallYInterval = .1;

@visibleForTesting
const maxIntervalCountLandscape = 10;

@visibleForTesting
double getIntervalMs(double durationS, {required bool isPortrait}) {
  final intervalCount =
      isPortrait ? maxIntervalCountPortrait : maxIntervalCountLandscape;
  final intervalS = (durationS / intervalCount).ceilToDouble();
  final intervalMs = intervalS * Duration.millisecondsPerSecond;
  return intervalMs;
}

@visibleForTesting
String msToTimeString(double milliseconds) {
  final dateTime = DateTime.fromMillisecondsSinceEpoch(milliseconds.toInt());
  return "${dateTime.hour.toString().padLeft(2, "0")}"
      ":${dateTime.minute.toString().padLeft(2, "0")}"
      ":${dateTime.second.toString().padLeft(2, "0")}";
}

@swidget
Widget __chart(
  BuildContext context, {
  required String title,
  required List<FlSpot> points,
  required double durationS,
  required Color backgroundColor,
  required Color lineColor,
  required Color gridColor,
  required LineType horizontalLineType,
  required LineType verticalLineType,
  required bool showDots,
}) {
  const largeXInterval = smallXInterval * 5;
  const largeYInterval = smallYInterval * 5;

  const thickLineWidth = 1.0;
  const thinLineWidth = .5;

  double getStrokeWidth(double value, {required bool isHorizontal}) {
    final largeInterval = isHorizontal ? largeYInterval : largeXInterval;
    final smallInterval = isHorizontal ? smallYInterval : smallXInterval;
    return value % largeInterval < smallInterval / 2
        ? thickLineWidth
        : thinLineWidth;
  }

  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

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
                  : largeYInterval,
              verticalInterval: verticalLineType == LineType.full
                  ? smallXInterval
                  : largeXInterval,
              getDrawingHorizontalLine: (value) => FlLine(
                color: gridColor,
                strokeWidth: getStrokeWidth(value, isHorizontal: true),
              ),
              getDrawingVerticalLine: (value) => FlLine(
                color: gridColor,
                strokeWidth: getStrokeWidth(value, isHorizontal: false),
              ),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: points,
                color: lineColor,
                barWidth: .5,
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

@swidget
Widget _chart3Lead(
  BuildContext context, {
  required List<FlSpot> pointsI,
  required List<FlSpot> pointsII,
  required List<FlSpot> pointsIII,
  required double durationS,
  required Color backgroundColor,
  required Color lineColor,
  required Color gridColor,
  required LineType horizontalLineType,
  required LineType verticalLineType,
  required bool showDots,
}) {
  final s = S.of(context);

  final children = [
    for (var i = 0; i < 3; i++)
      Expanded(
        child: _Chart(
          title: [s.leadI, s.leadII, s.leadIII][i],
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

  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

  if (isPortrait) {
    return Column(
      children: [
        for (var i = 0; i < children.length * 2 - 1; i++)
          i.isEven ? children[i ~/ 2] : const SizedBox(height: 32),
      ],
    );
  } else {
    return Row(children: children);
  }
}
