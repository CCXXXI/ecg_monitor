import "package:ecg_monitor/utils/urls.dart";
import "package:flutter_test/flutter_test.dart";

const expectedIssuesUrl = "https://github.com/CCXXXI/ecg_monitor/issues";

void main() {
  group("Urls", () {
    test("issues", () => expect(issuesUrl.toString(), expectedIssuesUrl));
  });
}
