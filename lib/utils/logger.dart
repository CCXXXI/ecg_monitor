import "package:logging/logging.dart";

import "../database.dart";
import "constants/keys.dart" as key;

final loggerLevels = Level.LEVELS.toList(growable: false)
  ..sort((a, b) => b.value - a.value);
final infoLevelIndex = loggerLevels.indexOf(Level.INFO);

void initLogger() {
  final index = prefs.getInt(key.loggerLevelIndex) ?? infoLevelIndex;
  Logger.root.level = loggerLevels[index];
}
