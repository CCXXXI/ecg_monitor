import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:sentry_flutter/sentry_flutter.dart";

import "../analytics/analytics.dart";
import "../database.dart";
import "../device_manager/device_manager.dart";
import "../home.dart";
import "../me/me.dart";
import "../me/settings.dart";
import "../monitor/monitor.dart";
import "../utils/constants/keys.dart" as key;

final _rootKey = GlobalKey<NavigatorState>(debugLabel: "root");
final _homeKey = GlobalKey<NavigatorState>(debugLabel: "home");

final router = GoRouter(
  navigatorKey: _rootKey,
  initialLocation: "/monitor",
  debugLogDiagnostics: true,
  observers: [SentryNavigatorObserver()],
  routes: [
    ShellRoute(
      navigatorKey: _homeKey,
      builder: (context, state, child) => Home(child),
      routes: [
        GoRoute(
          path: "/monitor",
          redirect: (context, state) =>
              prefs.getString(key.currentDeviceId) == null
                  ? "/device_manager"
                  : null,
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
          path: "/me",
          builder: (context, state) => const Me(),
        ),
      ],
    ),
    GoRoute(
      path: "/me/settings",
      builder: (context, state) => const Settings(),
      parentNavigatorKey: _rootKey,
    ),
  ],
);
