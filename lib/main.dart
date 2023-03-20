import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_ume/flutter_ume.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:sentry_flutter/sentry_flutter.dart";
import "package:sentry_logging/sentry_logging.dart";

import "analytics/model.dart";
import "generated/l10n.dart";
import "utils/database.dart";
import "utils/debug/data.dart";
import "utils/debug/logger.dart";
import "utils/debug/ume.dart";
import "utils/license.dart";
import "utils/router.dart";
import "utils/strings.dart";

part "main.g.dart";

/// The root widget of the app.
/// Wrap [AppCore] with multiple Widgets to provide additional functionality.
@swidget
Widget _app(BuildContext context) => SentryScreenshotWidget(
      child: UMEWidget(
        enable: prefs.getBool(K.showDevTools) ?? false,
        child: const ProviderScope(
          child: AppCore(),
        ),
      ),
    );

/// The core widget of the app.
/// With no additional functionality for testing purposes.
@swidget
Widget _appCore(BuildContext context) => MaterialApp.router(
      title: fallbackAppName,
      routerConfig: router,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );

void main() async {
  // initializations
  WidgetsFlutterBinding.ensureInitialized();
  await initPrefs();
  initUme();
  initLogger();
  await initPackageInfo();
  await loadModel();
  await initDebugData();
  initLicense();

  // init Sentry & run app
  Sentry.configureScope(
    (scope) => scope.setUser(SentryUser(ipAddress: "{{auto}}")),
  );
  await SentryFlutter.init(
    (options) {
      options
        ..dsn = sentryDsn
        ..tracesSampleRate = 1.0
        ..addIntegration(LoggingIntegration())
        ..sendDefaultPii = true;
    },
    appRunner: () => runApp(const App()),
  );
}
