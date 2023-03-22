import "dart:math";

import "package:fl_chart/fl_chart.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
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
Duration getInterval(Duration duration, {required bool isPortrait}) {
  final intervalCount =
      isPortrait ? maxIntervalCountPortrait : maxIntervalCountLandscape;
  return Duration(seconds: (duration.inSeconds / intervalCount).ceil());
}

extension DateTimeToTimeString on DateTime {
  String toTimeString() => "${hour.toString().padLeft(2, "0")}"
      ":${minute.toString().padLeft(2, "0")}"
      ":${second.toString().padLeft(2, "0")}";
}

@swidget
Widget __chart(
  BuildContext context, {
  required String title,
  required List<FlSpot> points,
  required Duration duration,
  required Color backgroundColor,
  required Color lineColor,
  required Color gridColor,
  required LineType horizontalLineType,
  required LineType verticalLineType,
  required bool showDots,
}) {
  const largeXInterval = smallXInterval * 5;
  const largeYInterval = smallYInterval * 5;

  const thickGridLineWidth = 1.0;
  const thinGridLineWidth = thickGridLineWidth / 5;
  const dataLineWidth = .5;

  double getStrokeWidth(double value, {required bool isHorizontal}) {
    final largeInterval = isHorizontal ? largeYInterval : largeXInterval;
    final smallInterval = isHorizontal ? smallYInterval : smallXInterval;
    return (value.abs() + 1e-6) % largeInterval < smallInterval / 2
        ? thickGridLineWidth
        : thinGridLineWidth;
  }

  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

  final drawHorizontalLine = horizontalLineType != LineType.hide;
  final drawVerticalLine = verticalLineType != LineType.hide;

  final bottomTitles = AxisTitles(
    sideTitles: SideTitles(
      showTitles: true,
      reservedSize: 30,
      interval: getInterval(duration, isPortrait: isPortrait)
          .inMilliseconds
          .toDouble(),
      getTitlesWidget: (value, meta) => value == meta.max || value == meta.min
          ? const SizedBox.shrink()
          : SideTitleWidget(
              axisSide: meta.axisSide,
              child: Text(
                DateTime.fromMillisecondsSinceEpoch(value.toInt())
                    .toTimeString(),
              ),
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
      if (isPortrait) Text(title),
      Expanded(
        child: LineChart(
          swapAnimationDuration: Duration.zero, // disable animation
          LineChartData(
            minX:
                points.isEmpty ? null : points.last.x - duration.inMilliseconds,
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
                barWidth: dataLineWidth,
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

final _landscapeIndexProvider = StateProvider<int>((ref) => 0);

@cwidget
Widget _chart3Lead(
  BuildContext context,
  WidgetRef ref, {
  required List<FlSpot> pointsI,
  required List<FlSpot> pointsII,
  required List<FlSpot> pointsIII,
  required Duration duration,
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
          duration: duration,
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
    final index = ref.watch(_landscapeIndexProvider);
    return Column(
      children: [
        SegmentedButton(
          segments: [
            ButtonSegment(value: 0, label: Text(s.leadI)),
            ButtonSegment(value: 1, label: Text(s.leadII)),
            ButtonSegment(value: 2, label: Text(s.leadIII)),
          ],
          selected: {index},
          onSelectionChanged: (selected) => ref
              .read(_landscapeIndexProvider.notifier)
              .state = selected.single,
        ),
        children[index],
      ],
    );
  }
}
