import "package:flutter/material.dart";

import "constants.dart";
import "home.dart";

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appName,
      home: HomeView(),
    );
  }
}
