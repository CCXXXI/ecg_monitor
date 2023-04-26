import "package:animations/animations.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:quiver/time.dart";
import "package:sentry_flutter/sentry_flutter.dart";

import "../analytics/analytics.dart";
import "../device/manager.dart";
import "../ecg/history/history.dart";
import "../ecg/real_time/real_time.dart";
import "../home.dart";
import "../me/me.dart";
import "../me/settings/settings.dart";

final _rootKey = GlobalKey<NavigatorState>(debugLabel: "root");
final _homeKey = GlobalKey<NavigatorState>(debugLabel: "home");

class _FadeThroughTransitionPage<T> extends CustomTransitionPage<T> {
  const _FadeThroughTransitionPage({
    required super.key,
    required super.child,
  }) : super(transitionsBuilder: _transitionsBuilder);

  static Widget _transitionsBuilder(
    BuildContext _,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) =>
      FadeThroughTransition(
        animation: animation,
        secondaryAnimation: secondaryAnimation,
        child: child,
      );
}

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
          pageBuilder: (context, state) => _FadeThroughTransitionPage(
            key: state.pageKey,
            child: const RealTime(),
          ),
        ),
        GoRoute(
          path: "/history",
          pageBuilder: (context, state) {
            // Show 3 seconds ago by default to avoid showing an empty chart.
            final time = state.extra as DateTime?;

            return _FadeThroughTransitionPage(
              key: state.pageKey,
              child: History(time ?? DateTime.now().subtract(aSecond * 3)),
            );
          },
        ),
        GoRoute(
          path: "/analytics",
          pageBuilder: (context, state) {
            final range = state.extra as List<DateTime>?;
            final now = DateTime.now().copyWith(second: 0, millisecond: 0);
            final start = range?.first ?? now.subtract(anHour);
            final end = range?.last ?? now;

            return _FadeThroughTransitionPage(
              key: state.pageKey,
              child: Analytics(start, end),
            );
          },
        ),
        GoRoute(
          path: "/device_manager",
          pageBuilder: (context, state) => _FadeThroughTransitionPage(
            key: state.pageKey,
            child: const DeviceManager(),
          ),
        ),
        GoRoute(
          path: "/me",
          pageBuilder: (context, state) => _FadeThroughTransitionPage(
            key: state.pageKey,
            child: const Me(),
          ),
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootKey,
      path: "/me/settings",
      builder: (context, state) => const Settings(),
    ),
  ],
);
