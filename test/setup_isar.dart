/// A fake test file to download the isar core library.
library;

import "package:flutter_test/flutter_test.dart";
import "package:isar/isar.dart";

void main() {
  test(
    "Setup Isar",
    () async => Isar.initializeIsarCore(download: true),
  );
}
