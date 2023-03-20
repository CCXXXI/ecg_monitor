import "dart:collection";
import "dart:math";

import "package:fl_chart/fl_chart.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:logging/logging.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../../device_manager/device.dart";
import "../../../me/settings/providers.dart";
import "../../chart.dart";

part "real_time_chart.g.dart";

final _logger = Logger("RealTimeChart");

@riverpod
double _refreshInterval(_RefreshIntervalRef ref) {
  final rateHz = ref.watch(refreshRateHzProvider);
  return Duration.millisecondsPerSecond / rateHz;
}

var _maxDurationMs = .0;

@riverpod
class _Points extends _$Points {
  var _previousRefreshTimeMs = 0.0;
  final _buffer = Queue<FlSpot>();

  @override
  List<FlSpot> build(int index) {
    ref.listen(ecgProvider.future, (previous, next) async => next.then(_add));
    return const [];
  }

  void _add(EcgData data) => _addPoint(
        FlSpot(
          data.time.millisecondsSinceEpoch.toDouble(),
          [data.leadI, data.leadII, data.leadIII][index],
        ),
      );

  void _addPoint(FlSpot point) {
    _logger.finest(point);

    // ignore if too close to the previous point
    final minDistance = ref.watch(minDistanceProvider);
    if (_buffer.isNotEmpty && distance(_buffer.last, point) < minDistance) {
      return;
    }

    // add new point
    _buffer.addLast(point);

    // remove outdated points
    while (_buffer.first.x < point.x - _maxDurationMs) {
      _buffer.removeFirst();
    }

    // refresh UI
    final intervalMs = ref.watch(_refreshIntervalProvider);
    if (point.x >= _previousRefreshTimeMs + intervalMs) {
      _previousRefreshTimeMs = point.x;
      state = _buffer.toList();
    }
  }
}

@cwidget
Widget _realTimeChart(BuildContext context, WidgetRef ref) {
  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

  final durationS = ref.watch(
    isPortrait
        ? realTimePortraitDurationProvider
        : realTimeLandscapeDurationProvider,
  );

  _maxDurationMs = durationS * Duration.millisecondsPerSecond;

  return Chart3Lead(
    pointsI: ref.watch(_pointsProvider(0)),
    pointsII: ref.watch(_pointsProvider(1)),
    pointsIII: ref.watch(_pointsProvider(2)),
    durationS: durationS,
    backgroundColor: ref.watch(realTimeBackgroundColorProvider),
    lineColor: ref.watch(realTimeLineColorProvider),
    gridColor: ref.watch(realTimeGridColorProvider),
    horizontalLineType: ref.watch(realTimeHorizontalLineTypeProvider),
    verticalLineType: ref.watch(realTimeVerticalLineTypeProvider),
    showDots: ref.watch(realTimeShowDotsProvider),
  );
}

/// Returns the normalized distance between two points.
@visibleForTesting
double distance(FlSpot a, FlSpot b) {
  final dx = (b.x - a.x) / smallXInterval;
  final dy = (b.y - a.y) / smallYInterval;
  return sqrt(dx * dx + dy * dy);
}
