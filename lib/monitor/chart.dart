import "dart:async";
import "dart:math";

import "package:fl_chart/fl_chart.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../device_manager/device.dart";
import "../mine/settings.dart";

part "chart.g.dart";

var _maxDurationMs = .0;

@riverpod
class _Points extends _$Points {
  @override
  List<FlSpot> build() {
    unawaited(ref.watch(ecgProvider.stream).forEach(add));
    return const [];
  }

  void add(double y) {
    final x = DateTime.now().millisecondsSinceEpoch.toDouble();
    while (state.isNotEmpty && state.first.x < x - _maxDurationMs) {
      state.removeAt(0);
    }
    state = [...state, FlSpot(x, y)];
  }
}

class Chart extends ConsumerWidget {
  const Chart({super.key});

  @visibleForTesting
  static const maxIntervalCountPortrait = 5;

  @visibleForTesting
  static const maxIntervalCountLandscape = 10;

  static const _largeHorizontalInterval = .5;
  static const _smallHorizontalInterval = .1;
  static const _largeVerticalInterval = 200.0;
  static const _smallVerticalInterval = 40.0;

  static const _thickLineWidth = 1.0;
  static const _thinLineWidth = .5;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final points = ref.watch(_pointsProvider);
    final settings = ref.watch(monitorSettingsProvider);
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final durationS =
        isPortrait ? settings.portraitDuration : settings.landscapeDuration;
    final horizontalLineType = settings.horizontalLineType;
    final verticalLineType = settings.verticalLineType;

    final durationMs = durationS * Duration.millisecondsPerSecond;
    _maxDurationMs = durationMs;
    final drawHorizontalLine = horizontalLineType != LineType.hide;
    final drawVerticalLine = verticalLineType != LineType.hide;

    final xTitles = AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        interval: getIntervalMs(durationS, isPortrait: isPortrait),
        getTitlesWidget: (value, meta) => value == meta.max || value == meta.min
            ? const SizedBox.shrink()
            : SideTitleWidget(
                axisSide: meta.axisSide,
                child: Text(Chart.msToTimeString(value)),
              ),
      ),
    );

    final yTitles = AxisTitles(
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

    return LineChart(
      swapAnimationDuration: Duration.zero, // disable animation
      LineChartData(
        minX: points.isEmpty ? null : points.last.x - durationMs,
        maxX: points.isEmpty ? null : points.last.x,
        minY: points.isEmpty
            ? null
            : points.map((p) => p.y).reduce(min) - _smallHorizontalInterval,
        maxY: points.isEmpty
            ? null
            : points.map((p) => p.y).reduce(max) + _smallHorizontalInterval,
        backgroundColor: settings.backgroundColor,
        titlesData: FlTitlesData(
          topTitles: xTitles,
          bottomTitles: xTitles,
          leftTitles: yTitles,
          rightTitles: yTitles,
        ),
        borderData: FlBorderData(show: false),
        gridData: FlGridData(
          show: drawHorizontalLine || drawVerticalLine,
          drawHorizontalLine: drawHorizontalLine,
          drawVerticalLine: drawVerticalLine,
          horizontalInterval: horizontalLineType == LineType.full
              ? _smallHorizontalInterval
              : _largeHorizontalInterval,
          verticalInterval: verticalLineType == LineType.full
              ? _smallVerticalInterval
              : _largeVerticalInterval,
          getDrawingHorizontalLine: (value) => FlLine(
            color: settings.gridColor,
            strokeWidth: _getStrokeWidth(value, isHorizontal: true),
          ),
          getDrawingVerticalLine: (value) => FlLine(
            color: settings.gridColor,
            strokeWidth: _getStrokeWidth(value, isHorizontal: false),
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: points,
            color: settings.lineColor,
            dotData: FlDotData(show: settings.showDotsOn),
          ),
        ],
      ),
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
    final largeInterval =
        isHorizontal ? _largeHorizontalInterval : _largeVerticalInterval;
    final smallInterval =
        isHorizontal ? _smallHorizontalInterval : _smallVerticalInterval;
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
}
