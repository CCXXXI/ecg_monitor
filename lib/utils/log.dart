import "package:logger_flutter_plus/logger_flutter_plus.dart";

final logConsoleManager = LogConsoleManager(isDark: false);

final logger = Logger(
  output: MultiOutput(
    [
      _AppOutput(logConsoleManager: logConsoleManager),
      ConsoleOutput(),
    ],
  ),
  printer: PrettyPrinter(methodCount: 0),
);

class _AppOutput extends LogOutput {
  final LogConsoleManager logConsoleManager;

  _AppOutput({required this.logConsoleManager});

  @override
  void output(OutputEvent event) {
    logConsoleManager.addLog(event);
  }

  @override
  void destroy() {
    logConsoleManager.dispose();
    super.destroy();
  }
}
