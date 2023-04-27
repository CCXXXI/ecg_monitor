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

/// Keys used to store data in the shared preferences.
class K {
  static const realTime = "realTime";
  static const portraitDuration = "portraitDuration";
  static const landscapeDuration = "landscapeDuration";
  static const refreshRateHz = "refreshRateHz";
  static const minDistance = "minDistance";
  static const gridColor = "gridColor";
  static const horizontalLineType = "horizontalLineType";
  static const verticalLineType = "verticalLineType";
  static const showDots = "showDots";

  static const history = "history";
  static const autoUpload = "autoUpload";

  static const analytics = "analytics";
  static const autoGenerate = "autoGenerate";

  static const currentDeviceId = "currentDeviceId";
  static const currentDeviceName = "currentDeviceName";

  static const showDevTools = "showDevTools";
  static const fakeDeviceOn = "fakeDeviceOn";
  static const loggerLevelIndex = "loggerLevelIndex";
}
