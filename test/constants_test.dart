import "package:ecg_monitor/utils/constants.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:package_info_plus/package_info_plus.dart";

void main() {
  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();

    PackageInfo.setMockInitialValues(
      appName: "",
      packageName: "",
      version: "",
      buildNumber: "",
      buildSignature: "",
      installerStore: null,
    );

    await initConstants();
  });

  test("license", () => expect(Strings.license, startsWith("MIT License")));
}
