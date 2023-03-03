import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_ume/core/ui/root_widget.dart";
import "package:sentry_flutter/sentry_flutter.dart";
import "package:sentry_logging/sentry_logging.dart";

import "analytics/model_stub.dart" if (dart.library.io) "analytics/model.dart";
import "database.dart";
import "utils/constants/strings.dart" as str;
import "utils/logger.dart";
import "utils/router.dart";
import "utils/ume.dart";

void main() async {
  // initializations
  WidgetsFlutterBinding.ensureInitialized();
  await initPrefs();
  initUme();
  initLogger();
  await str.initPackageInfo();
  await loadModel();

  // init Sentry & run app
  Sentry.configureScope(
    (scope) => scope.setUser(SentryUser(ipAddress: "{{auto}}")),
  );
  await SentryFlutter.init(
    (options) {
      options
        ..dsn = str.sentryDsn
        ..tracesSampleRate = 1.0
        ..addIntegration(LoggingIntegration())
        ..sendDefaultPii = true;
    },
    appRunner: () => runApp(const App()),
  );
}

/// The root widget of the app.
/// Wrap [AppCore] with multiple Widgets to provide additional functionality.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => const SentryScreenshotWidget(
        child: UMEWidget(
          child: ProviderScope(
            child: AppCore(),
          ),
        ),
      );
}

/// The core widget of the app.
/// With no additional functionality for testing purposes.
@visibleForTesting
class AppCore extends StatelessWidget {
  const AppCore({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: str.appName,
        routerConfig: router,
        theme: ThemeData.light(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
      );
}
