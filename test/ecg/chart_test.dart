import "package:ecg_monitor/ecg/chart.dart";
import "package:ecg_monitor/generated/l10n.dart";
import "package:ecg_monitor/me/settings/data_types.dart";
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
      const ProviderScope(
        child: MaterialApp(
          localizationsDelegates: [S.delegate],
          home: Chart3Lead(
            pointsI: [],
            pointsII: [],
            pointsIII: [],
            duration: aSecond,
            backgroundColor: Colors.white,
            lineColor: Colors.black,
            gridColor: Colors.black,
            horizontalLineType: LineType.hide,
            verticalLineType: LineType.hide,
            showDots: false,
          ),
        ),
      ),
    );

    expect(find.text(s.leadI), findsOneWidget);
    expect(find.text(s.leadII), findsOneWidget);
    expect(find.text(s.leadIII), findsOneWidget);
  });
}
