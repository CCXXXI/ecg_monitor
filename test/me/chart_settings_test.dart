import "package:ecg_monitor/me/settings/chart_settings.dart";
import "package:flutter_test/flutter_test.dart";
import "package:quiver/time.dart";

void main() {
  group("Duration.toMsString", () {
    test("1000 ms", () => expect(aSecond.toMsString(), "1000 ms"));
    test("1500 ms", () => expect((aSecond * 1.5).toMsString(), "1500 ms"));
    test("2000 ms", () => expect((aSecond * 2).toMsString(), "2000 ms"));
  });
}
