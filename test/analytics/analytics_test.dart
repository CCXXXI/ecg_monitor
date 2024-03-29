import "package:ecg_monitor/analytics/analytics.dart";
import "package:ecg_monitor/analytics/data_types.dart";
import "package:ecg_monitor/generated/l10n.dart";
import "package:ecg_monitor/utils/database.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_test/flutter_test.dart";
import "package:isar/isar.dart";
import "package:path_provider_platform_interface/path_provider_platform_interface.dart";
import "package:quiver/time.dart";
import "package:shared_preferences/shared_preferences.dart";

import "../fake_path_provider.dart";

void main() {
  setUpAll(() async {
    SharedPreferences.setMockInitialValues({});
    await Isar.initializeIsarCore(download: true);
    PathProviderPlatform.instance = FakePathProviderPlatform();
    await initDatabase();
    await S.load(S.delegate.supportedLocales.first);
  });

  testWidgets("Analytics", (tester) async {
    tester.view.physicalSize = const Size(4320, 7680);
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          localizationsDelegates: const [S.delegate],
          home: Scaffold(
            body: Analytics(DateTime.now().subtract(anHour), DateTime.now()),
          ),
        ),
      ),
    );

    for (final label in Label.values) {
      expect(find.text(label.name, skipOffstage: false), findsOneWidget);
    }
  });
}
