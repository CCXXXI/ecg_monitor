import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:sentry_flutter/sentry_flutter.dart";

import "analytics/model_stub.dart" if (dart.library.io) "analytics/model.dart";
import "database.dart";
import "utils/constants.dart";
import "utils/logger.dart";
import "utils/router.dart";

void main() async {
  // initializations
  WidgetsFlutterBinding.ensureInitialized();
  await initConstants();
  await initPrefs();
  initLogger();
  await loadModel();

  // init Sentry & run app
  await SentryFlutter.init(
    (options) {
      options.dsn = Strings.sentryDsn;
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => runApp(const ProviderScope(child: App())),
  );
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
