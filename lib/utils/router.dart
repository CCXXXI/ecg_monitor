import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:logger_flutter_plus/logger_flutter_plus.dart";

import "../home.dart";
import "../mine/settings.dart";
import "log.dart";

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      path: "/mine/settings",
      builder: (context, state) => const Settings(),
    ),
    GoRoute(
      path: "/log",
      builder: (context, state) => LogConsoleWidget(
        logConsoleManager: logConsoleManager,
        showCloseButton: true,
        theme: LogConsoleTheme.byTheme(ThemeData(useMaterial3: true)),
      ),
    ),
  ],
  debugLogDiagnostics: true, // todo: sync with global log level
);
