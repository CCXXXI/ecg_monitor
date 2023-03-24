/// A fake test file to download the isar core library.
library;

import "package:flutter_test/flutter_test.dart";
import "package:isar/isar.dart";

void main() {
  setUpAll(() async => Isar.initializeIsarCore(download: true));
}
