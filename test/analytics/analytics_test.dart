import "package:ecg_monitor/analytics/analytics.dart";
import "package:ecg_monitor/analytics/data_types.dart";
import "package:ecg_monitor/generated/l10n.dart";
import "package:ecg_monitor/utils/database.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:isar/isar.dart";
import "package:shared_preferences/shared_preferences.dart";

void main() {
  setUpAll(() async {
    SharedPreferences.setMockInitialValues({});
    await Isar.initializeIsarCore(download: true);
    await initDatabase();
    await S.load(S.delegate.supportedLocales.first);
  });

  testWidgets("Analytics", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: Analytics())),
    );

    for (final label in Label.values) {
      expect(find.text(label.name), findsOneWidget);
    }
  });
}