import "dart:io";

import "package:flutter/material.dart";
import "package:restart_app/restart_app.dart";

import "../../generated/l10n.dart";

void showRestartSnackBar(BuildContext context) {
  final s = S.of(context);

  final restartActionAvailable = Platform.isAndroid;

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(s.restartNeeded),
      action: restartActionAvailable
          ? SnackBarAction(
              label: s.restart,
              onPressed: Restart.restartApp,
            )
          : null,
    ),
  );
}
