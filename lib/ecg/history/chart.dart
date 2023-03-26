import "package:fl_chart/fl_chart.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:isar/isar.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../analytics/data_types.dart";
import "../../device_manager/device.dart";
import "../../generated/l10n.dart";
import "../../me/settings/providers.dart";
import "../../utils/database.dart";
import "../chart.dart";

part "chart.g.dart";

@riverpod
List<EcgData> _ecgData(_EcgDataRef ref, DateTime time, Duration duration) {
  final start = time.subtract(duration ~/ 2);
  final end = time.add(duration ~/ 2);

  final data = isar.samplePoints
      .where()
      .millisecondsSinceEpochBetween(
        start.millisecondsSinceEpoch,
        end.millisecondsSinceEpoch,
      )
      .findAllSync();

  return data.map((d) => d.toEcgData()).toList();
}

@riverpod
List<BeatData> _beatData(_BeatDataRef ref, DateTime time, Duration duration) =>
    beatDataBetween(
      time.subtract(duration ~/ 2),
      time.add(duration ~/ 2),
    );

DateTime? _previousTime;

@cwidget
Widget _historyChart(BuildContext context, WidgetRef ref, DateTime time) {
  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

  final duration = ref.watch(
    isPortrait
        ? historyPortraitDurationProvider
        : historyLandscapeDurationProvider,
  );

  final data = ref.watch(_ecgDataProvider(time, duration));

  if (data.isEmpty) {
    return const _NoData();
  }

  final pointsI = <FlSpot>[];
  final pointsII = <FlSpot>[];
  final pointsIII = <FlSpot>[];
  for (final d in data) {
    final x = d.time.millisecondsSinceEpoch.toDouble();
    pointsI.add(FlSpot(x, d.leadI));
    pointsII.add(FlSpot(x, d.leadII));
    pointsIII.add(FlSpot(x, d.leadIII));
  }

  final beats = ref.watch(_beatDataProvider(time, duration));

  // Determine the direction of the transition animation.
  final reverse = _previousTime != null && time.isBefore(_previousTime!);
  _previousTime = time;

  return Chart3Lead(
    pointsI: pointsI,
    pointsII: pointsII,
    pointsIII: pointsIII,
    duration: duration,
    backgroundColor: ref.watch(historyBackgroundColorProvider),
    lineColor: ref.watch(historyLineColorProvider),
    gridColor: ref.watch(historyGridColorProvider),
    horizontalLineType: ref.watch(historyHorizontalLineTypeProvider),
    verticalLineType: ref.watch(historyVerticalLineTypeProvider),
    showDots: ref.watch(historyShowDotsProvider),
    beats: beats,
    lineChartKey: ValueKey(time),
    reverse: reverse,
  );
}

@swidget
Widget __noData(BuildContext context) {
  final s = S.of(context);

  return Center(
    child: Text(
      s.noHistoryData,
      style: Theme.of(context).textTheme.headlineLarge,
    ),
  );
}
