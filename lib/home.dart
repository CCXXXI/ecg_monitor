import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";
import "package:logging/logging.dart";

import "utils/constants/strings.dart" as str;

final _logger = Logger("Home");

class Home extends ConsumerWidget {
  const Home(this._child, {super.key});

  static const _routes = [
    "/real_time",
    "/history",
    "/analytics",
    "/device_manager",
    "/me",
  ];

  final Widget _child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = GoRouterState.of(context).location;
    final index = _routes.indexOf(route);

    _logger.fine("Home.build: route=$route, index=$index");

    return Scaffold(
      appBar: AppBar(title: const Text(str.appName)),
      body: _child,
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
}
