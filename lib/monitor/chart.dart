import "dart:async";
import "dart:collection";
import "dart:math";

import "package:fl_chart/fl_chart.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../device_manager/device.dart";
import "../mine/settings.dart";

part "chart.g.dart";

@riverpod
double _refreshInterval(_RefreshIntervalRef ref) {
  final rateHz = ref.watch(monitorSettingsProvider).refreshRateHz;
  return Duration.millisecondsPerSecond / rateHz;
}

var _maxDurationMs = .0;

@riverpod
class _Points extends _$Points {
  static var _previousRefreshTimeMs = 0.0;
  static final _buffer = Queue<FlSpot>();

  @override
  List<FlSpot> build() {
    unawaited(ref.watch(ecgProvider.stream).forEach(add));
    return const [];
  }

  void add(double y) {
    // get point
    final x = DateTime.now().millisecondsSinceEpoch.toDouble();
    final point = FlSpot(x, y);

    // ignore if too close to the previous point
    final minDistance = ref.watch(monitorSettingsProvider).minDistance;
    if (_buffer.isNotEmpty &&
        Chart.normalizedDistance(_buffer.last, point) < minDistance) {
      return;
    }

    // add new point
    _buffer.addLast(point);

    // remove outdated points
    while (_buffer.first.x < x - _maxDurationMs) {
      _buffer.removeFirst();
    }

    // refresh UI
    final intervalMs = ref.watch(_refreshIntervalProvider);
    if (x >= _previousRefreshTimeMs + intervalMs) {
      _previousRefreshTimeMs = x;
      state = _buffer.toList();
    }
  }
}

class Chart extends ConsumerWidget {
  const Chart({super.key});

  @visibleForTesting
  static const maxIntervalCountPortrait = 5;

  @visibleForTesting
  static const maxIntervalCountLandscape = 10;

  static const _smallXInterval = 40.0;
  static const _largeXInterval = _smallXInterval * 5;
  static const _smallYInterval = .1;
  static const _largeYInterval = _smallYInterval * 5;

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
            : points.map((p) => p.y).reduce(min) - _smallYInterval,
        maxY: points.isEmpty
            ? null
            : points.map((p) => p.y).reduce(max) + _smallYInterval,
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
              ? _smallYInterval
              : _largeYInterval,
          verticalInterval: verticalLineType == LineType.full
              ? _smallXInterval
              : _largeXInterval,
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
            preventCurveOverShooting: true,
            dotData: FlDotData(
              show: settings.showDotsOn,
              getDotPainter: (spot, xPercentage, bar, index) =>
                  FlDotSquarePainter(color: settings.backgroundColor),
            ),
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
    final largeInterval = isHorizontal ? _largeYInterval : _largeXInterval;
    final smallInterval = isHorizontal ? _smallYInterval : _smallXInterval;
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

  @visibleForTesting
  static double normalizedDistance(FlSpot a, FlSpot b) {
    final dx = (b.x - a.x) / _smallXInterval;
    final dy = (b.y - a.y) / _smallYInterval;
    return sqrt(dx * dx + dy * dy);
  }
}
