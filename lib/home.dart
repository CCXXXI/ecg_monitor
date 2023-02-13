import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";
import "package:logging/logging.dart";

import "utils/constants.dart";

final _logger = Logger("home");

class Home extends ConsumerWidget {
  static const _routes = ["/monitor", "/analytics", "/device_manager", "/mine"];

  final Widget _child;

  const Home(this._child, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = GoRouterState.of(context).location;
    final index = _routes.indexOf(route);

    _logger.fine("Home.build: route=$route, index=$index");

    return Scaffold(
      appBar: AppBar(title: const Text(Strings.appName)),
      body: _child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (i) => context.go(_routes[i]),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.monitor_heart),
            label: Strings.monitor,
          ),
          NavigationDestination(
            icon: Icon(Icons.analytics),
            label: Strings.analytics,
          ),
          NavigationDestination(
            icon: Icon(Icons.device_hub),
            label: Strings.deviceManager,
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: Strings.mine,
          ),
        ],
      ),
    );
  }
}
