import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";
import "package:logging/logging.dart";

import "utils/constants/strings.dart" as str;

part "home.g.dart";

final _logger = Logger("Home");

const _routes = [
  "/real_time",
  "/history",
  "/analytics",
  "/device_manager",
  "/me",
];

@cwidget
Widget _home(BuildContext context, WidgetRef ref, Widget child) {
  final route = GoRouterState.of(context).location;
  final index = _routes.indexOf(route);

  _logger.fine("route=$route, index=$index");

  return Scaffold(
    appBar: AppBar(title: const Text(str.appName)),
    body: child,
    bottomNavigationBar: NavigationBar(
      selectedIndex: index,
      onDestinationSelected: (i) => context.go(_routes[i]),
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.monitor_heart_outlined),
          label: str.realTime,
        ),
        NavigationDestination(
          icon: Icon(Icons.history_outlined),
          label: str.history,
        ),
        NavigationDestination(
          icon: Icon(Icons.analytics_outlined),
          label: str.analytics,
        ),
        NavigationDestination(
          icon: Icon(Icons.device_hub_outlined),
          label: str.deviceManager,
        ),
        NavigationDestination(
          icon: Icon(Icons.person_outlined),
          label: str.me,
        ),
      ],
    ),
  );
}
