import "package:logging/logging.dart";

import "../database.dart";
import "constants/strings.dart" as str;

final loggerLevels = Level.LEVELS.toList(growable: false)
  ..sort((a, b) => b.value - a.value);
final infoLevelIndex = loggerLevels.indexOf(Level.INFO);

void initLogger() {
  final index = prefs.getInt(str.loggerLevel) ?? infoLevelIndex;
  Logger.root.level = loggerLevels[index];
}
