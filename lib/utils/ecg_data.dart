import "package:flutter/services.dart";

Future<List<double>> _loadTxt(String path) async {
  final s = await rootBundle.loadString(path);
  return s
      .split("\n")
      .where((line) => line.isNotEmpty)
      .map(double.parse)
      .toList(growable: false);
}

const _dataPath = "ios/Classes/PanTompkinsQRS/assets/ecg_data/assets";

late final List<double> leadI;
late final List<double> leadII;

Future<void> initData() async {
  leadI = await _loadTxt("$_dataPath/lead I.txt");
  leadII = await _loadTxt("$_dataPath/lead II.txt");

  assert(leadI.length == leadII.length, "leadI.length != leadII.length");
}
