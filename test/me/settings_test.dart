import "package:ecg_monitor/me/settings/settings.dart";
import "package:flutter_test/flutter_test.dart";
import "package:quiver/time.dart";

void main() {
  group("DurationToSecondsString", () {
    test("1.0 s", () => expect(aSecond.toSecondsString(), "1.0 s"));
    test("1.5 s", () => expect((aSecond * 1.5).toSecondsString(), "1.5 s"));
    test("2.0 s", () => expect((aSecond * 2).toSecondsString(), "2.0 s"));
  });
}
