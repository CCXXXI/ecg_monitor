import "package:fl_chart/fl_chart.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "device_manager/device.dart";
import "utils/constants.dart";

part "monitor.g.dart";

final _start = DateTime.now().millisecondsSinceEpoch;

@riverpod
class Points extends _$Points {
  @override
  List<FlSpot> build() {
    ref.watch(ecgProvider.stream).forEach(add);
    return const [];
  }

  void add(double y) {
    final x = (DateTime.now().millisecondsSinceEpoch - _start).toDouble();
    while (state.isNotEmpty && state.first.x < x - Numbers.duration) {
      state.removeAt(0);
    }
    state = [...state, FlSpot(x, y)];
  }

  void clear() => state = const [];
}

class MonitorView extends ConsumerWidget {
  const MonitorView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final points = ref.watch(pointsProvider);

    return LineChart(
      swapAnimationDuration: const Duration(), // disable animation
      LineChartData(
        minY: Numbers.minY,
        maxY: Numbers.maxY,
        minX: points.isEmpty ? 0 : points.last.x - Numbers.duration,
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
            DateTime.fromMillisecondsSinceEpoch(value.toInt())
                .second
                .toString(),
          ),
        ),
      ),
    );
  }
}
