import "dart:async";
import "dart:collection";
import "dart:ffi";

import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:logging/logging.dart";
import "package:quiver/time.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../../device_manager/device.dart";
import "../../../utils/constants/strings.dart" as str;
import "generated_bindings.dart";

part "heart_rate.g.dart";

final _logger = Logger("HeartRate");

final _lib = PanTompkinsQRS(DynamicLibrary.open("libPanTompkinsQRS.so"));

@riverpod
class _HeartRate extends _$HeartRate {
  // At the beginning of the QRS detection,
  // a 2 seconds learning phase is needed.
  // See: https://en.wikipedia.org/wiki/Pan%E2%80%93Tompkins_algorithm#Thresholds.
  static final _learningPhase = aSecond * 2;

  // Count of QRSs to calculate heart rate.
  static const _qrsCount = 5;

  static final _start = DateTime.now();
  static final _qrsBuffer = Queue<DateTime>();

  @override
  int build() {
    _lib.init(ref.watch(currentDeviceProvider.select((d) => d?.fs ?? 0)));
    unawaited(ref.watch(ecgProvider.stream).forEach(_add));
    return 0;
  }

  void _add(EcgData data) {
    // Ignore if it's not a QRS.
    if (!_lib.panTompkins(data.leadI)) {
      return;
    }

    // Ignore if it's in the learning phase.
    if (DateTime.now().difference(_start) < _learningPhase) {
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
      return;
    }

    // Calculate heart rate.
    final duration = _qrsBuffer.last.difference(_qrsBuffer.first);
    final minutes = duration.inMilliseconds / aMinute.inMilliseconds;
    final beats = _qrsBuffer.length - 1;
    final bpm = beats / minutes;
    state = bpm.round();
  }
}

class HeartRate extends ConsumerWidget {
  const HeartRate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rate = ref.watch(_heartRateProvider);

    if (rate == 0) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          const CircularProgressIndicator(),
          const Spacer(),
          Text(
            str.heartRateDetecting,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Spacer(flex: 2),
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
            rate.toString(),
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
