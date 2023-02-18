import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:sentry_flutter/sentry_flutter.dart";
import "package:sentry_logging/sentry_logging.dart";

import "analytics/model_stub.dart" if (dart.library.io) "analytics/model.dart";
import "database.dart";
import "utils/constants/strings.dart" as str;
import "utils/logger.dart";
import "utils/router.dart";

void main() async {
  // initializations
  WidgetsFlutterBinding.ensureInitialized();
  await str.initPackageInfo();
  await initPrefs();
  initLogger();
  await loadModel();

  // init Sentry & run app
  await SentryFlutter.init(
    (options) {
      options
        ..dsn = str.sentryDsn
        ..tracesSampleRate = 1.0
        ..addIntegration(LoggingIntegration());
    },
    appRunner: () => runApp(const App()),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => SentryScreenshotWidget(
        child: ProviderScope(
          child: MaterialApp.router(
            title: str.appName,
            routerConfig: router,
            theme: ThemeData(useMaterial3: true),
          ),
        ),
      );
}
