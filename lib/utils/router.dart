import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:quiver/time.dart";
import "package:sentry_flutter/sentry_flutter.dart";

import "../analytics/analytics.dart";
import "../analytics/data_types.dart";
import "../analytics/label_details.dart";
import "../device_manager/device_manager.dart";
import "../ecg/history/history.dart";
import "../ecg/real_time/real_time.dart";
import "../home.dart";
import "../me/me.dart";
import "../me/settings/settings.dart";

final _rootKey = GlobalKey<NavigatorState>(debugLabel: "root");
final _homeKey = GlobalKey<NavigatorState>(debugLabel: "home");

final router = GoRouter(
  navigatorKey: _rootKey,
  initialLocation: "/real_time",
  debugLogDiagnostics: true,
  observers: [SentryNavigatorObserver()],
  routes: [
    ShellRoute(
      navigatorKey: _homeKey,
      builder: (context, state, child) => Home(child),
      routes: [
        GoRoute(
          path: "/real_time",
          builder: (context, state) => const RealTime(),
        ),
        GoRoute(
          path: "/history",
          builder: (context, state) {
            // Show 3 seconds ago by default to avoid showing an empty chart.
            final time = state.extra ?? DateTime.now().subtract(aSecond * 3);
            return History(time as DateTime);
          },
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
      parentNavigatorKey: _rootKey,
      path: "/me/settings",
      builder: (context, state) => const Settings(),
    ),
    GoRoute(
      parentNavigatorKey: _rootKey,
      path: "/analytics/label_details",
      builder: (context, state) => LabelDetails(state.extra! as Label),
    ),
  ],
);
