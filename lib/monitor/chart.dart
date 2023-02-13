import "package:fl_chart/fl_chart.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../device_manager/device.dart";
import "../mine/settings.dart";

part "chart.g.dart";

var _maxDurationMs = 0.0;

@riverpod
class _Points extends _$Points {
  @override
  List<FlSpot> build() {
    ref.watch(ecgProvider.stream).forEach(add);
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
  static const maxIntervalCountPortrait = 5;
  static const maxIntervalCountLandscape = 10;

  const Chart({super.key});

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
    final showDots = ref.watch(showDotsProvider);

    final durationMs = durationS * Duration.millisecondsPerSecond;
    _maxDurationMs = durationMs;
    final intervalMs = getIntervalMs(isPortrait, durationS);

    final titles = _getTimeAxisTitles(intervalMs);

    return LineChart(
      swapAnimationDuration: Duration.zero, // disable animation
      LineChartData(
        minX: points.isEmpty ? null : points.last.x - durationMs,
        maxX: points.isEmpty ? null : points.last.x,
        backgroundColor: Color(backgroundColor),
        titlesData: FlTitlesData(topTitles: titles, bottomTitles: titles),
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
  static double getIntervalMs(bool isPortrait, double durationS) {
    final intervalCount =
        isPortrait ? maxIntervalCountPortrait : maxIntervalCountLandscape;
    final intervalS = (durationS / intervalCount).ceilToDouble();
    final intervalMs = intervalS * Duration.millisecondsPerSecond;
    return intervalMs;
  }

  AxisTitles _getTimeAxisTitles(double interval) {
    return AxisTitles(
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
  }
}

extension on DateTime {
  String toTimeString() => "${hour.toString().padLeft(2, "0")}"
      ":${minute.toString().padLeft(2, "0")}"
      ":${second.toString().padLeft(2, "0")}";
}
