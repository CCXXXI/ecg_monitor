import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "constants.dart";
import "home.dart";

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: Strings.appName,
      home: HomeView(),
    );
  }
}
