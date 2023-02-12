import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "database.dart";
import "model.dart";
import "utils/constants.dart";
import "utils/router.dart";

void main() async {
  // initializations
  WidgetsFlutterBinding.ensureInitialized();
  await initConstants();
  await initPrefs();
  await loadModel();

  // run app
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: Strings.appName,
      routerConfig: router,
      theme: ThemeData(useMaterial3: true),
    );
  }
}
