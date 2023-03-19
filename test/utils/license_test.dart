import "package:ecg_monitor/utils/license.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  setUpAll(WidgetsFlutterBinding.ensureInitialized);

  test("license", () {
    initLicense();

    expect(
      LicenseRegistry.licenses,
      emitsThrough(
        // The type cannot be inferred, so we have to specify it.
        // ignore: avoid_types_on_closure_parameters
        (LicenseEntry license) => license.packages.contains("PanTompkinsQRS"),
      ),
    );
  });
}
