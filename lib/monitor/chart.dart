import "dart:async";

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
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final durationS = ref.watch(
      isPortrait ? portraitDurationProvider : landscapeDurationProvider,
    );
    final backgroundColor = ref.watch(backgroundColorProvider);
    final lineColor = ref.watch(lineColorProvider);
    final gridColor = ref.watch(gridColorProvider);
    final horizontalLineTypeIndex = ref.watch(horizontalLineTypeIndexProvider);
    final verticalLineTypeIndex = ref.watch(verticalLineTypeIndexProvider);
    final showDots = ref.watch(showDotsProvider);

    final durationMs = durationS * Duration.millisecondsPerSecond;
    _maxDurationMs = durationMs;
    final intervalMs = getIntervalMs(durationS, isPortrait: isPortrait);
    final horizontalLineType = LineType.values[horizontalLineTypeIndex];
    final verticalLineType = LineType.values[verticalLineTypeIndex];
    final drawHorizontalLine = horizontalLineType != LineType.hide;
    final drawVerticalLine = verticalLineType != LineType.hide;
    final horizontalInterval = horizontalLineType == LineType.full
        ? _smallHorizontalInterval
        : _largeHorizontalInterval;
    final verticalInterval = verticalLineType == LineType.full
        ? _smallVerticalInterval
        : _largeVerticalInterval;

    final titles = _getTimeAxisTitles(intervalMs);

    return LineChart(
      swapAnimationDuration: Duration.zero, // disable animation
      LineChartData(
        minX: points.isEmpty ? null : points.last.x - durationMs,
        maxX: points.isEmpty ? null : points.last.x,
        backgroundColor: Color(backgroundColor),
        titlesData: FlTitlesData(topTitles: titles, bottomTitles: titles),
        gridData: FlGridData(
          show: drawHorizontalLine || drawVerticalLine,
          drawHorizontalLine: drawHorizontalLine,
          drawVerticalLine: drawVerticalLine,
          horizontalInterval: horizontalInterval,
          verticalInterval: verticalInterval,
          getDrawingHorizontalLine: (value) => FlLine(
            color: Color(gridColor),
            strokeWidth: _getStrokeWidth(value, isHorizontal: true),
          ),
          getDrawingVerticalLine: (value) => FlLine(
            color: Color(gridColor),
            strokeWidth: _getStrokeWidth(value, isHorizontal: false),
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: points,
            color: Color(lineColor),
            dotData: FlDotData(show: showDots),
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

  static AxisTitles _getTimeAxisTitles(double interval) => AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          interval: interval,
          getTitlesWidget: (value, meta) => SideTitleWidget(
            axisSide: meta.axisSide,
            child: Text(
              DateTime.fromMillisecondsSinceEpoch(value.toInt()).toTimeString(),
            ),
          ),
        ),
      );

  static double _getStrokeWidth(double value, {required bool isHorizontal}) {
    final largeInterval =
        isHorizontal ? _largeHorizontalInterval : _largeVerticalInterval;
    final smallInterval =
        isHorizontal ? _smallHorizontalInterval : _smallVerticalInterval;
    return value % largeInterval < smallInterval / 2
        ? _thickLineWidth
        : _thinLineWidth;
  }
}

extension on DateTime {
  String toTimeString() => "${hour.toString().padLeft(2, "0")}"
      ":${minute.toString().padLeft(2, "0")}"
      ":${second.toString().padLeft(2, "0")}";
}
