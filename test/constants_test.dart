import "package:ecg_monitor/utils/constants.dart";
import "package:flutter_test/flutter_test.dart";

const expectedIssuesUrl = "https://github.com/CCXXXI/ecg_monitor/issues";

void main() {
  group("Urls", () {
    test("issues", () => expect(Urls.issues.toString(), expectedIssuesUrl));
  });
}
