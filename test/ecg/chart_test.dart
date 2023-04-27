import "package:ecg_monitor/ecg/chart.dart";
import "package:ecg_monitor/generated/l10n.dart";
import "package:ecg_monitor/me/settings/data_types.dart";
import "package:fl_chart/fl_chart.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_test/flutter_test.dart";
import "package:quiver/time.dart";

void main() {
  group("getIntervalMs", () {
    test("portrait", () {
      const maxIntervalCount = maxIntervalCountPortrait;

      for (var i = 1.0; i <= maxIntervalCount; ++i) {
        expect(getInterval(aSecond * i, isPortrait: true), aSecond);
      }

      for (var i = maxIntervalCount + 1.0; i <= maxIntervalCount * 2; ++i) {
        expect(getInterval(aSecond * i, isPortrait: true), aSecond * 2);
      }
    });

    test("landscape", () {
      const maxIntervalCount = maxIntervalCountLandscape;

      for (var i = 1.0; i <= maxIntervalCount; ++i) {
        expect(getInterval(aSecond * i, isPortrait: false), aSecond);
      }

      for (var i = maxIntervalCount + 1.0; i <= maxIntervalCount * 2; ++i) {
        expect(getInterval(aSecond * i, isPortrait: false), aSecond * 2);
      }
    });
  });

  testWidgets("Chart3Lead", (tester) async {
    final s = await S.load(S.delegate.supportedLocales.first);

    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          localizationsDelegates: const [S.delegate],
          home: Chart3Lead(
            pointsI: [
              for (var i = 0;
                  i < 3 * aSecond.inMilliseconds;
                  i += Duration.millisecondsPerSecond ~/ 3)
                FlSpot(i.toDouble(), 0)
            ],
            pointsII: const [],
            pointsIII: const [],
            duration: aSecond,
            gridColor: Colors.black,
            horizontalLineType: LineType.full,
            verticalLineType: LineType.full,
            showDots: false,
          ),
        ),
      ),
    );

    // titles
    expect(find.text(s.leadI), findsOneWidget);
    expect(find.text(s.leadII), findsOneWidget);
    expect(find.text(s.leadIII), findsOneWidget);

    // resets the screen to its original size after the test end
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);

    // portrait chart
    tester.binding.window.physicalSizeTestValue = const Size(1000, 2000);
    await tester.pumpAndSettle();
    expect(find.byType(LineChart), findsNWidgets(3));

    // landscape chart
    tester.binding.window.physicalSizeTestValue = const Size(2000, 1000);
    await tester.pumpAndSettle();
    expect(find.byType(LineChart), findsOneWidget);
  });
}
