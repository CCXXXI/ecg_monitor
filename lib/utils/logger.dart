import "package:flutter_ume_kit_console/flutter_ume_kit_console.dart";
import "package:logging/logging.dart";

import "../database.dart";
import 'strings.dart';

final loggerLevels = Level.LEVELS.toList(growable: false)
  ..sort((a, b) => b.value - a.value);
final infoLevelIndex = loggerLevels.indexOf(Level.INFO);

void initLogger() {
  // set logger level
  final index = prefs.getInt(K.loggerLevelIndex) ?? infoLevelIndex;
  Logger.root.level = loggerLevels[index];

  // add listener
  Logger.root.onRecord.listen((record) {
    consolePrint(record.message);
  });
}
