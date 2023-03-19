import "package:flutter/foundation.dart";
import "package:package_info_plus/package_info_plus.dart";

/// Used as id, name and model of the fake device.
const fakeDeviceId = "Fake Device";

/// Used only when the l10n is not available.
const fallbackAppName = "ECG Monitor";

late final String appVersion;
const buildMode = kReleaseMode
    ? "Release"
    : kProfileMode
        ? "Profile"
        : "Debug";

const sentryDsn =
    "https://2f8266dc3f2947a186a1bb5a835f4b37@o996799.ingest.sentry.io"
    "/4504697112625152";

Future<void> initPackageInfo() async {
  final info = await PackageInfo.fromPlatform();
  appVersion = "${info.version}+${info.buildNumber} $buildMode Build";
}
