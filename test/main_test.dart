import "package:ecg_monitor/database.dart";
import "package:ecg_monitor/generated/l10n.dart";
import "package:ecg_monitor/main.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_test/flutter_test.dart";
import "package:shared_preferences/shared_preferences.dart";

void main() {
  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await initPrefs();
  });

  testWidgets("App", (tester) async {
    final s = await S.load(S.delegate.supportedLocales.first);

    await tester.pumpWidget(const ProviderScope(child: AppCore()));

    expect(find.text(s.appName), findsOneWidget);
  });
}
