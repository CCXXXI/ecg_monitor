import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";

import "../../generated/l10n.dart";

part "device_not_available.g.dart";

@swidget
Widget _deviceNotAvailable(BuildContext context) {
  final s = S.of(context);

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Text(
          s.deviceNotConnected,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      OutlinedButton(
        child: Text(s.deviceManager),
        onPressed: () => context.go("/device_manager"),
      ),
    ],
  );
}
