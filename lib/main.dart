import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "constants.dart";
import "home.dart";
import "model.dart";

void main() async {
  // initializations
  WidgetsFlutterBinding.ensureInitialized();
  await loadModel();

  // run app
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
