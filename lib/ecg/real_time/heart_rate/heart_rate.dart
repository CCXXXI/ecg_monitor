import "dart:async";
import "dart:collection";
import "dart:ffi";

import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:logging/logging.dart";
import "package:quiver/time.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../../device_manager/device.dart";
import "../../../generated/l10n.dart";
import "generated_bindings.dart";

part "heart_rate.freezed.dart";
part "heart_rate.g.dart";

final _logger = Logger("HeartRate");

final _lib = PanTompkinsQRS(DynamicLibrary.open("libPanTompkinsQRS.so"));

@visibleForTesting
@freezed
class HeartRateData with _$HeartRateData {
  const factory HeartRateData({
    /// If ready, the heart rate in beats per minute.
    @Default(0) int rate,

    /// If not ready, the progress of the calculation. (0.0 - 1.0)
    @Default(0) double progress,
  }) = _HeartRateData;

  const HeartRateData._();

  /// Whether the heart rate is ready.
  bool get ready => rate > 0;
}

@riverpod
class _HeartRate extends _$HeartRate {
  // At the beginning of the QRS detection,
  // a 2 seconds learning phase is needed.
  // See: https://en.wikipedia.org/wiki/Pan%E2%80%93Tompkins_algorithm#Thresholds.
  // Note: 2s is not enough according to our test.
  // At least 3s is needed.
  static final _learningPhase = aSecond * 3;

  // Count of beats to calculate heart rate.
  static const _beatCount = 1;

  // Count of QRSs to calculate heart rate.
  static const _qrsCount = _beatCount + 1;

  static final _waitingDuration = _learningPhase + aSecond * _qrsCount;

  final _stopwatch = Stopwatch()..start();
  final _qrsBuffer = Queue<DateTime>();

  @override
  HeartRateData build() {
    _lib.init(ref.watch(currentDeviceProvider.select((d) => d?.fs ?? 0)));
    unawaited(ref.watch(ecgProvider.stream).forEach(_add));
    return const HeartRateData();
  }

  void _add(EcgData data) {
    // Update progress if the data is not ready yet.
    final progress =
        _stopwatch.elapsedMilliseconds / _waitingDuration.inMilliseconds;
    final ready = progress >= 1;
    if (!ready) {
      state = HeartRateData(progress: progress);
    }

    // Ignore if it's not a QRS.
    if (!_lib.panTompkins(data.leadI)) {
      return;
    }

    // Ignore if it's in the learning phase.
    if (_stopwatch.elapsed < _learningPhase) {
      _logger.fine("QRS: ${data.time} (learning phase)");
      return;
    }

    _logger.finer("QRS: ${data.time}");

    // Add new QRS.
    _qrsBuffer.addLast(data.time);

    // Remove outdated QRSs.
    if (_qrsBuffer.length > _qrsCount) {
      _qrsBuffer.removeFirst();
    }

    _logger.finer("QRS buffer: $_qrsBuffer");

    // Too few QRSs to calculate heart rate.
    if (_qrsBuffer.length < _qrsCount) {
      return;
    }

    // Calculate heart rate.
    final duration = _qrsBuffer.last.difference(_qrsBuffer.first);
    final minutes = duration.inMilliseconds / aMinute.inMilliseconds;
    final bpm = _beatCount / minutes;
    _logger.finer("Heart rate: $bpm bpm");
    if (ready) {
      state = HeartRateData(rate: bpm.round());
    }
  }
}

@cwidget
Widget _heartRateWidget(BuildContext context, WidgetRef ref) {
  final s = S.of(context);

  final data = ref.watch(_heartRateProvider);

  if (!data.ready) {
    return Column(
      children: [
        LinearProgressIndicator(value: data.progress),
        Text(
          s.heartRateDetecting,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ],
    );
  }

  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      textBaseline: TextBaseline.ideographic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        const Icon(Icons.favorite, size: 48, color: Colors.red),
        Text(
          data.rate.toString(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          s.bpm,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ],
    ),
  );
}
