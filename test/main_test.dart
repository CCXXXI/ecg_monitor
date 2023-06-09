import "package:ecg_monitor/generated/l10n.dart";
import "package:ecg_monitor/main.dart";
import "package:ecg_monitor/utils/database.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_test/flutter_test.dart";
import "package:isar/isar.dart";
import "package:path_provider_platform_interface/path_provider_platform_interface.dart";
import "package:shared_preferences/shared_preferences.dart";

import "fake_path_provider.dart";

void main() {
  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await Isar.initializeIsarCore(download: true);
    PathProviderPlatform.instance = FakePathProviderPlatform();
    await initDatabase();
  });

  testWidgets("App", (tester) async {
    final s = await S.load(S.delegate.supportedLocales.first);

    await tester.pumpWidget(const ProviderScope(child: AppCore()));

    expect(find.text(s.realTime), findsOneWidget);
  });
}
