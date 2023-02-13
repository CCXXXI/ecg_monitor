import "package:logging/logging.dart";

import "../database.dart";
import "constants.dart";

final loggerLevels = Level.LEVELS.toList(growable: false)
  ..sort((a, b) => b.value - a.value);
final infoLevelIndex = loggerLevels.indexOf(Level.INFO);

void initLogger() {
  final index = prefs.getInt(Strings.loggerLevel) ?? infoLevelIndex;
  Logger.root.level = loggerLevels[index];
}
