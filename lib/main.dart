import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

import "constants.dart";
import "home.dart";
import "mine/settings.dart";
import "model.dart";

void main() async {
  // initializations
  WidgetsFlutterBinding.ensureInitialized();
  await loadModel();

  // run app
  runApp(const ProviderScope(child: App()));
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: "/mine/settings",
      builder: (context, state) => const SettingsView(),
    ),
  ],
  debugLogDiagnostics: true, // todo: sync with global log level
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: Strings.appName,
      routerConfig: _router,
      theme: ThemeData(useMaterial3: true),
    );
  }
}
