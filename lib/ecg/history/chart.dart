import "package:fl_chart/fl_chart.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../analytics/data_types.dart";
import "../../device/device.dart";
import "../../generated/l10n.dart";
import "../../me/settings/chart_settings.dart";
import "../../me/settings/providers.dart";
import "../../utils/database.dart";
import "../chart.dart";

part "chart.g.dart";

@riverpod
Future<List<EcgData>> _ecgData(
  _EcgDataRef ref,
  DateTime time,
  Duration duration,
) =>
    ecgDataBetween(
      time.subtract(duration ~/ 2),
      time.add(duration ~/ 2),
    );

@riverpod
Future<List<BeatData>> _beatData(
  _BeatDataRef ref,
  DateTime time,
  Duration duration,
) =>
    beatDataBetween(
      time.subtract(duration ~/ 2),
      time.add(duration ~/ 2),
    );

var _initDuration = Duration.zero;
var _prevData = <EcgData>[];
var _prevBeats = <BeatData>[];

@cwidget
Widget _historyChart(BuildContext context, WidgetRef ref, DateTime time) {
  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

  final durationProvider = isPortrait
      ? historyPortraitDurationProvider
      : historyLandscapeDurationProvider;
  final duration = ref.watch(durationProvider);

  final data = ref.watch(_ecgDataProvider(time, duration)).valueOrNull;
  final beats = ref.watch(_beatDataProvider(time, duration)).valueOrNull;

  if (data != null) {
    _prevData = data;
  }
  if (beats != null) {
    _prevBeats = beats;
  }

  if ((data ?? _prevData).isEmpty) {
    return const _NoData();
  }

  final pointsI = <FlSpot>[];
  final pointsII = <FlSpot>[];
  final pointsIII = <FlSpot>[];
  for (final d in data ?? _prevData) {
    final x = d.time.millisecondsSinceEpoch.toDouble();
    pointsI.add(FlSpot(x, d.leadI));
    pointsII.add(FlSpot(x, d.leadII));
    pointsIII.add(FlSpot(x, d.leadIII));
  }

  return GestureDetector(
    onScaleStart: (_) => _initDuration = duration,
    onScaleUpdate: (details) async {
      final ms = (_initDuration.inMilliseconds / details.scale).round().clamp(
            chartDurationLowerLimit.inMilliseconds,
            chartDurationUpperLimit.inMilliseconds,
          );
      await ref.read(durationProvider.notifier).set(Duration(milliseconds: ms));
    },
    onHorizontalDragUpdate: (details) {
      final newTime = time.subtract(duration * details.primaryDelta! ~/ 125);
      context.go("/history", extra: newTime);
    },
    child: Chart3Lead(
      pointsI: pointsI,
      pointsII: pointsII,
      pointsIII: pointsIII,
      duration: duration,
      gridColor: ref.watch(historyGridColorProvider),
      horizontalLineType: ref.watch(historyHorizontalLineTypeProvider),
      verticalLineType: ref.watch(historyVerticalLineTypeProvider),
      showDots: ref.watch(historyShowDotsProvider),
      beats: beats ?? _prevBeats,
    ),
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
