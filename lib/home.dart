import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "utils/constants.dart";

part "home.g.dart";

@riverpod
class _Index extends _$Index {
  @override
  int build() => 0;

  void set(int index) => state = index;
}

class Home extends ConsumerWidget {
  final Widget _child;

  const Home(this._child, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(_indexProvider);

    return Scaffold(
      appBar: AppBar(title: const Text(Strings.appName)),
      body: _child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (i) {
          ref.read(_indexProvider.notifier).set(i);
          context.go(["/monitor", "/analytics", "/device_manager", "/mine"][i]);
        },
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
