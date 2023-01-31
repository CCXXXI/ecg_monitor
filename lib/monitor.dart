import "dart:async";

import "package:fl_chart/fl_chart.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "utils/constants.dart";

part "monitor.g.dart";

final start = DateTime.now().millisecondsSinceEpoch;
late final List<double> _fakeData;

Future<void> initMonitor() async {
  final s = await rootBundle.loadString("assets/debug/input.txt");
  _fakeData = s
      .split("\n")
      .where((line) => line.isNotEmpty)
      .map(double.parse)
      .toList(growable: false);
}

@riverpod
class _MonitorController extends _$MonitorController {
  @override
  List<FlSpot> build() => const [FlSpot(0, 0)];

  void add(double y) {
    final x = (DateTime.now().millisecondsSinceEpoch - start) / 1000;
    if (state.length >= Numbers.points) {
      state.removeAt(0);
    }
    state = [...state, FlSpot(x, y)];
  }
}

class MonitorView extends ConsumerStatefulWidget {
  const MonitorView({super.key});

  @override
  ConsumerState<MonitorView> createState() => _MonitorViewState();
}

class _MonitorViewState extends ConsumerState<MonitorView> {
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      const Duration(milliseconds: Numbers.tick),
      (timer) => ref
          .read(_monitorControllerProvider.notifier)
          .add(_fakeData[timer.tick % _fakeData.length]),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final points = ref.watch(_monitorControllerProvider);

    return LineChart(
      swapAnimationDuration: const Duration(), // disable animation
      LineChartData(
        minY: Numbers.minY,
        maxY: Numbers.maxY,
        minX: points.first.x,
        maxX: points.first.x + Numbers.duration / 1000,
        lineBarsData: [
          LineChartBarData(
            spots: points,
          ),
        ],
      ),
    );
  }
}
