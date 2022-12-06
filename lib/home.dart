import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:salomon_bottom_bar/salomon_bottom_bar.dart";

import "constants.dart";
import 'device.dart';
import 'mine.dart';
import "monitor.dart";

part "home.g.dart";

@riverpod
class _Index extends _$Index {
  @override
  int build() => 0;

  void set(int index) => state = index;
}

const _pages = [
  MonitorView(),
  Placeholder(),
  DeviceView(),
  MineView(),
];

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(_indexProvider);

    return Scaffold(
      appBar: AppBar(title: const Text(Strings.appName)),
      body: _pages[index],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: index,
        onTap: (index) => ref.read(_indexProvider.notifier).set(index),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.monitor_heart),
            title: const Text(Strings.monitor),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.analytics),
            title: const Text(Strings.analysis),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.device_hub),
            title: const Text(Strings.device),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text(Strings.mine),
          ),
        ],
      ),
    );
  }
}
