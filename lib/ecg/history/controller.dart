import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:quiver/time.dart";

import "../chart.dart";
import "start_provider.dart";

part "controller.g.dart";

@cwidget
Widget _historyController(BuildContext context, WidgetRef ref) {
  final start = ref.watch(startProvider);

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        icon: const Icon(Icons.replay_30_outlined),
        onPressed: () => ref.read(startProvider.notifier).replay(aSecond * 30),
      ),
      IconButton(
        icon: const Icon(Icons.replay_5_outlined),
        onPressed: () => ref.read(startProvider.notifier).replay(aSecond * 5),
      ),
      IconButton(
        icon: const Icon(Icons.arrow_back_outlined),
        onPressed: () => ref.read(startProvider.notifier).replay(aSecond),
      ),
      TextButton(
        child: Text(start.toTimeString()),
        onPressed: () async {
          final newStart = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(start),
          );
          if (newStart != null) {
            ref.read(startProvider.notifier).set(newStart);
          }
        },
      ),
      IconButton(
        icon: const Icon(Icons.arrow_forward_outlined),
        onPressed: () => ref.read(startProvider.notifier).forward(aSecond),
      ),
      IconButton(
        icon: const Icon(Icons.forward_5_outlined),
        onPressed: () => ref.read(startProvider.notifier).forward(aSecond * 5),
      ),
      IconButton(
        icon: const Icon(Icons.forward_30_outlined),
        onPressed: () => ref.read(startProvider.notifier).forward(aSecond * 30),
      ),
    ],
  );
}
