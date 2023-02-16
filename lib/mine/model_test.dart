import "package:flutter/foundation.dart";
import "package:flutter/services.dart";
import "package:logging/logging.dart";

import "../model.dart";

final _logger = Logger("model_test");

void modelTest() async {
  _logger.fine("读取测试输入");
  final inputStr = await rootBundle.loadString("assets/debug/input.txt");
  final input = inputStr
      .split("\n")
      .where((line) => line.isNotEmpty)
      .map(double.parse)
      .toList(growable: false);
  _logger.finer("input.length = ${input.length}");

  _logger.fine("获取实际输出");
  final actualOutput = forward(input);
  _logger.finer("actualOutput.length = ${actualOutput.length}");

  _logger.fine("读取预期输出");
  final expectedOutputStr =
      await rootBundle.loadString("assets/debug/output.txt");
  final expectedOutput = expectedOutputStr
      .split("\n")
      .where((line) => line.isNotEmpty)
      .map(int.parse)
      .toList(growable: false);
  _logger.finer("expectedOutput.length = ${expectedOutput.length}");

  _logger.fine("比较实际输出与预期输出");
  if (listEquals(expectedOutput, actualOutput)) {
    _logger.info("一致");
  } else {
    _logger.severe("不一致");
  }
}
