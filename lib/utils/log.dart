import "package:logger_flutter_plus/logger_flutter_plus.dart";

final logConsoleManager = LogConsoleManager(isDark: false);

final logger = Logger(
  output: MultiOutput(
    [
      AppOutput(logConsoleManager: logConsoleManager),
      ConsoleOutput(),
    ],
  ),
  printer: PrettyPrinter(methodCount: 0),
);

class AppOutput extends LogOutput {
  final LogConsoleManager logConsoleManager;

  AppOutput({required this.logConsoleManager});

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
