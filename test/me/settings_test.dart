import "package:ecg_monitor/generated/l10n.dart";
import "package:ecg_monitor/me/settings/data_types.dart";
import "package:ecg_monitor/me/settings/settings.dart";
import "package:ecg_monitor/utils/database.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_test/flutter_test.dart";
import "package:isar/isar.dart";
import "package:quiver/time.dart";
import "package:shared_preferences/shared_preferences.dart";

void main() {
  group("Duration.toMsString", () {
    test("1000 ms", () => expect(aSecond.toMsString(), "1000 ms"));
    test("1500 ms", () => expect((aSecond * 1.5).toMsString(), "1500 ms"));
    test("2000 ms", () => expect((aSecond * 2).toMsString(), "2000 ms"));
  });

  group("Settings", () {
    setUp(() async {
      SharedPreferences.setMockInitialValues({"showDevTools": true});
      await Isar.initializeIsarCore(download: true);
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
