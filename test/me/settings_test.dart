import "package:ecg_monitor/generated/l10n.dart";
import "package:ecg_monitor/me/settings/data_types.dart";
import "package:ecg_monitor/me/settings/settings.dart";
import "package:ecg_monitor/utils/database.dart";
import "package:ecg_monitor/utils/strings.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_test/flutter_test.dart";
import "package:isar/isar.dart";
import "package:path_provider_platform_interface/path_provider_platform_interface.dart";
import "package:shared_preferences/shared_preferences.dart";

import "../fake_path_provider.dart";

void main() {
  group("Settings", () {
    setUp(() async {
      SharedPreferences.setMockInitialValues({K.showDevTools: true});
      await Isar.initializeIsarCore(download: true);
      PathProviderPlatform.instance = FakePathProviderPlatform();
      await initDatabase();
    });

    testWidgets("Settings", (tester) async {
      final s = await S.load(S.delegate.supportedLocales.first);

      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            localizationsDelegates: [S.delegate],
            home: Settings(),
          ),
        ),
      );

      final tileFinder = find.widgetWithText(ListTile, s.horizontalLines);
      expect(tileFinder, findsOneWidget);

      final buttonFinder = find.descendant(
        of: tileFinder,
        matching: find.byType(SegmentedButton<LineType>),
      );
      expect(buttonFinder, findsOneWidget);

      final button =
          buttonFinder.evaluate().single.widget as SegmentedButton<LineType>;
      expect(button.selected, {ChartSettingsData.simple.horizontalLineType});
    });
  });
}
