import "package:flutter/foundation.dart";
import "package:flutter/services.dart";

import "../model.dart";
import "../utils/log.dart";

void modelTest() async {
  logger.d("读取测试输入");
  final inputStr = await rootBundle.loadString("assets/debug/input.txt");
  final input = inputStr
      .split("\n")
      .where((line) => line.isNotEmpty)
      .map(double.parse)
      .toList(growable: false);
  logger.v("input.length = ${input.length}");

  logger.d("获取实际输出");
  final actualOutput = forward(input);
  logger.v("actualOutput.length = ${actualOutput.length}");

  logger.d("读取预期输出");
  final expectedOutputStr =
      await rootBundle.loadString("assets/debug/output.txt");
  final expectedOutput = expectedOutputStr
      .split("\n")
      .where((line) => line.isNotEmpty)
      .map(int.parse)
      .toList(growable: false);
  logger.v("expectedOutput.length = ${expectedOutput.length}");

  logger.d("比较实际输出与预期输出");
  if (listEquals(expectedOutput, actualOutput)) {
    logger.i("一致");
  } else {
    logger.e("不一致");
  }
}
