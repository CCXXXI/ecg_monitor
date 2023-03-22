import "package:fl_chart/fl_chart.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:isar/isar.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../device_manager/device.dart";
import "../../me/settings/providers.dart";
import "../../utils/database.dart";
import "../chart.dart";
import "start_provider.dart";

part "chart.g.dart";

@riverpod
List<EcgData> _ecgData(_EcgDataRef ref, Duration duration) {
  final start = ref.watch(startProvider);
  final end = start.add(duration);

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
List<FlSpot> _points(_PointsRef ref, int index, Duration duration) {
  final data = ref.watch(_ecgDataProvider(duration));

  return data
      .map(
        (d) => FlSpot(
          d.time.millisecondsSinceEpoch.toDouble(),
          [d.leadI, d.leadII, d.leadIII][index],
        ),
      )
      .toList();
}

@cwidget
Widget _historyChart(BuildContext context, WidgetRef ref) {
  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

  final duration = ref.watch(
    isPortrait
        ? historyPortraitDurationProvider
        : historyLandscapeDurationProvider,
  );

  return Chart3Lead(
    pointsI: ref.watch(_pointsProvider(0, duration)),
    pointsII: ref.watch(_pointsProvider(1, duration)),
    pointsIII: ref.watch(_pointsProvider(2, duration)),
    duration: duration,
    backgroundColor: ref.watch(historyBackgroundColorProvider),
    lineColor: ref.watch(historyLineColorProvider),
    gridColor: ref.watch(historyGridColorProvider),
    horizontalLineType: ref.watch(historyHorizontalLineTypeProvider),
    verticalLineType: ref.watch(historyVerticalLineTypeProvider),
    showDots: ref.watch(historyShowDotsProvider),
  );
}
