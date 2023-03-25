import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
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
          name: "history",
          path: "/history",
          builder: (context, state) {
            final msSinceEpoch = state.queryParams["msSinceEpoch"];
            final time = msSinceEpoch != null
                ? DateTime.fromMillisecondsSinceEpoch(int.parse(msSinceEpoch))
                : DateTime.now();
            return History(time);
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
      path: "/analytics/label_details/:label_index",
      builder: (context, state) {
        final labelIndex = state.params["label_index"]!;
        final label = Label.values[int.parse(labelIndex)];
        return LabelDetails(label);
      },
    ),
  ],
);
