import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:logger_flutter_plus/logger_flutter_plus.dart";

import "../analytics.dart";
import "../device_manager/device_manager.dart";
import "../home.dart";
import "../mine/mine.dart";
import "../mine/settings.dart";
import "../monitor/monitor.dart";
import "log.dart";

final _rootKey = GlobalKey<NavigatorState>(debugLabel: "root");
final _homeKey = GlobalKey<NavigatorState>(debugLabel: "home");

final router = GoRouter(
  navigatorKey: _rootKey,
  initialLocation: "/monitor",
  routes: [
    ShellRoute(
      navigatorKey: _homeKey,
      builder: (context, state, child) => Home(child),
      routes: [
        GoRoute(
          path: "/monitor",
          builder: (context, state) => const Monitor(),
        ),
        GoRoute(
          path: "/analytics",
          builder: (context, state) => const Analytics(),
        ),
        GoRoute(
          path: "/device_manager",
          builder: (context, state) => const DeviceManager(),
        ),
        GoRoute(
          path: "/mine",
          builder: (context, state) => const Mine(),
        ),
      ],
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
