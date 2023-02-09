import "package:fl_chart/fl_chart.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "device_manager/device.dart";
import "mine/settings.dart";

part "monitor.g.dart";

@riverpod
class Points extends _$Points {
  static const _maxDurationMs = 20 * Duration.millisecondsPerSecond;

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

class MonitorView extends ConsumerWidget {
  const MonitorView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final points = ref.watch(pointsProvider);
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final durationS = ref.watch(
      isPortrait ? portraitDurationProvider : landscapeDurationProvider,
    );
    final durationMs = durationS * Duration.millisecondsPerSecond;

    return LineChart(
      swapAnimationDuration: const Duration(), // disable animation
      LineChartData(
        minY: isPortrait ? -10 : null,
        maxY: isPortrait ? 10 : null,
        minX: points.isEmpty ? 0 : points.last.x - durationMs,
        maxX: points.isEmpty ? 0 : points.last.x,
        clipData: FlClipData.all(),
        titlesData: FlTitlesData(
          topTitles: _getTimeAxisTitles(),
          bottomTitles: _getTimeAxisTitles(),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: points,
            color: Colors.red,
            dotData: FlDotData(show: false),
          ),
        ],
      ),
    );
  }

  AxisTitles _getTimeAxisTitles() {
    return AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        interval: Duration.millisecondsPerSecond.toDouble(),
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
