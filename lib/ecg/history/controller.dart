import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";
import "package:quiver/time.dart";

import "../../utils/database.dart";
import "../../utils/time.dart";

part "controller.g.dart";

@swidget
Widget _historyController(BuildContext context, DateTime time) {
  void go(DateTime time) => context.go("/history", extra: time);

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        icon: const Icon(Icons.replay_30_outlined),
        onPressed: () => go(time.subtract(aSecond * 30)),
      ),
      IconButton(
        icon: const Icon(Icons.replay_5_outlined),
        onPressed: () => go(time.subtract(aSecond * 5)),
      ),
      IconButton(
        icon: const Icon(Icons.arrow_back_outlined),
        onPressed: () async => go(await beatTimeBefore(time)),
      ),
      TextButton(
        child: Text(time.toTimeString(showMs: true)),
        onPressed: () async {
          final newTime = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(time),
          );
          if (newTime != null) {
            go(newTime.toDateTimeBefore(DateTime.now()));
          }
        },
      ),
      IconButton(
        icon: const Icon(Icons.arrow_forward_outlined),
        onPressed: () async => go(await beatTimeAfter(time)),
      ),
      IconButton(
        icon: const Icon(Icons.forward_5_outlined),
        onPressed: () => go(time.add(aSecond * 5)),
      ),
      IconButton(
        icon: const Icon(Icons.forward_30_outlined),
        onPressed: () => go(time.add(aSecond * 30)),
      ),
    ],
  );
}
