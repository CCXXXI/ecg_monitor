import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";
import "package:logging/logging.dart";

import "generated/l10n.dart";

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
  final s = S.of(context);

  final route = GoRouterState.of(context).location;
  final index = _routes.indexOf(route);

  _logger.fine("route=$route, index=$index");

  return Scaffold(
    appBar: AppBar(title: Text(s.appName)),
    body: child,
    bottomNavigationBar: NavigationBar(
      selectedIndex: index,
      onDestinationSelected: (i) => context.go(_routes[i]),
      destinations: [
        NavigationDestination(
          icon: const Icon(Icons.monitor_heart_outlined),
          label: s.realTime,
        ),
        NavigationDestination(
          icon: const Icon(Icons.history_outlined),
          label: s.history,
        ),
        NavigationDestination(
          icon: const Icon(Icons.analytics_outlined),
          label: s.analytics,
        ),
        NavigationDestination(
          icon: const Icon(Icons.device_hub_outlined),
          label: s.deviceManager,
        ),
        NavigationDestination(
          icon: const Icon(Icons.person_outlined),
          label: s.me,
        ),
      ],
    ),
  );
}
