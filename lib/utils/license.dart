import "package:flutter/foundation.dart";
import "package:flutter/services.dart";

void initLicense() {
  LicenseRegistry.addLicense(() async* {
    yield LicenseEntryWithLineBreaks(
      ["PanTompkinsQRS"],
      await rootBundle.loadString("ios/Classes/PanTompkinsQRS/LICENSE"),
    );
  });
}
