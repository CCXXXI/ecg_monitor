import "dart:async";
import "dart:collection";
import "dart:ffi";

import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:logging/logging.dart";
import "package:quiver/time.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../../device_manager/device.dart";
import "../../../utils/constants/strings.dart" as str;
import "generated_bindings.dart";

part "heart_rate.freezed.dart";
part "heart_rate.g.dart";

final _logger = Logger("HeartRate");

final _lib = PanTompkinsQRS(DynamicLibrary.open("libPanTompkinsQRS.so"));

@freezed
class _HeartRateData with _$_HeartRateData {
  const factory _HeartRateData({
    /// If available, the heart rate in beats per minute.
    @Default(0) int rate,

    /// If unavailable, the progress of the calculation. (0.0 - 1.0)
    @Default(0) double progress,
  }) = __HeartRateData;

  const _HeartRateData._();

  /// Available or not.
  bool get available => rate > 0;
}

@riverpod
class _HeartRate extends _$HeartRate {
  // At the beginning of the QRS detection,
  // a 2 seconds learning phase is needed.
  // See: https://en.wikipedia.org/wiki/Pan%E2%80%93Tompkins_algorithm#Thresholds.
  static final _learningPhase = aSecond * 2;

  static const _learningProgressWeight = .5;

  // Count of QRSs to calculate heart rate.
  static const _qrsCount = 5;

  static final _start = DateTime.now();
  static final _qrsBuffer = Queue<DateTime>();

  @override
  _HeartRateData build() {
    _lib.init(ref.watch(currentDeviceProvider.select((d) => d?.fs ?? 0)));
    unawaited(ref.watch(ecgProvider.stream).forEach(_add));
    return const _HeartRateData();
  }

  void _add(EcgData data) {
    // Determine if it's in the learning phase.
    final timeSinceStart = DateTime.now().difference(_start);
    final isLearning = timeSinceStart < _learningPhase;

    // Update progress if it's in the learning phase.
    if (isLearning) {
      final learningProgress =
          timeSinceStart.inMilliseconds / _learningPhase.inMilliseconds;
      state = _HeartRateData(
        progress: _learningProgressWeight * learningProgress,
      );
    }

    // Ignore if it's not a QRS.
    if (!_lib.panTompkins(data.leadI)) {
      return;
    }

    // Ignore if it's in the learning phase.
    if (isLearning) {
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

    // Too few QRSs to calculate heart rate.
    if (_qrsBuffer.length < _qrsCount) {
      final calculatingProgress = _qrsBuffer.length / _qrsCount;
      final progress = _learningProgressWeight +
          (1 - _learningProgressWeight) * calculatingProgress;
      state = _HeartRateData(progress: progress);
      return;
    }

    // Calculate heart rate.
    final duration = _qrsBuffer.last.difference(_qrsBuffer.first);
    final minutes = duration.inMilliseconds / aMinute.inMilliseconds;
    final beats = _qrsBuffer.length - 1;
    final bpm = beats / minutes;
    state = _HeartRateData(rate: bpm.round());
  }
}

class HeartRateWidget extends ConsumerWidget {
  const HeartRateWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(_heartRateProvider);

    if (!data.available) {
      return Column(
        children: [
          LinearProgressIndicator(value: data.progress),
          Text(
            str.heartRateDetecting,
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
            str.bpm,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }
}
