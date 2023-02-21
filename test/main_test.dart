import "package:ecg_monitor/database.dart";
import "package:ecg_monitor/main.dart";
import "package:ecg_monitor/utils/constants/strings.dart" as str;
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_test/flutter_test.dart";
import "package:shared_preferences/shared_preferences.dart";

void main() {
  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await initPrefs();
  });

  testWidgets("App", (tester) async {
    await tester.pumpWidget(const ProviderScope(child: App()));

    expect(find.text(str.appName), findsOneWidget);
    expect(find.text(str.monitor), findsOneWidget);
    expect(find.text(str.analytics), findsOneWidget);
    expect(find.text(str.deviceManager), findsOneWidget);
    expect(find.text(str.mine), findsOneWidget);
  });
}
