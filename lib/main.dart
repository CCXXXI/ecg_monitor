import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_ume/flutter_ume.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:sentry_flutter/sentry_flutter.dart";
import "package:sentry_logging/sentry_logging.dart";

import "analytics/model_stub.dart" if (dart.library.io) "analytics/model.dart";
import "database.dart";
import "utils/constants/data.dart";
import "utils/constants/keys.dart" as key;
import "utils/constants/strings.dart" as str;
import "utils/license.dart";
import "utils/logger.dart";
import "utils/router.dart";
import "utils/ume.dart";

part "main.g.dart";

/// The root widget of the app.
/// Wrap [AppCore] with multiple Widgets to provide additional functionality.
@swidget
Widget _app(BuildContext context) => SentryScreenshotWidget(
      child: UMEWidget(
        enable: prefs.getBool(key.showDevTools) ?? false,
        child: const ProviderScope(
          child: AppCore(),
        ),
      ),
    );

/// The core widget of the app.
/// With no additional functionality for testing purposes.
@swidget
Widget _appCore(BuildContext context) => MaterialApp.router(
      title: str.appName,
      routerConfig: router,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        // en-Latn-US
        Locale.fromSubtags(
          languageCode: "en",
          scriptCode: "Latn",
          countryCode: "US",
        ),
        // zh-Hans-CN
        Locale.fromSubtags(
          languageCode: "zh",
          scriptCode: "Hans",
          countryCode: "CN",
        )
      ],
    );

void main() async {
  // initializations
  WidgetsFlutterBinding.ensureInitialized();
  await initPrefs();
  initUme();
  initLogger();
  await str.initPackageInfo();
  await loadModel();
  await initData();
  initLicense();

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
