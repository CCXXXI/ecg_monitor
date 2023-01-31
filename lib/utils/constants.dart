class Strings {
  static const String appName = "心电监测";
  static const String monitor = "实时数据";
  static const String analytics = "分析报告";
  static const String device = "设备管理";
  static const String mine = "我的";
  static const String settings = "设置";
  static const String devTools = "开发者工具";
  static const String modelTest = "模型测试";
  static const String log = "日志";
}

class Numbers {
  /// 采样率 Hz
  static const int _sampleRate = 250;

  /// 抽取间隔，每几点取一点
  static const int interval = 4;

  /// 采样周期 ms
  static const int tick = 1000 ~/ _sampleRate * interval;

  /// 显示时长 ms
  static const int duration = 5 * 1000;

  /// 显示点数
  static const int points = duration ~/ tick;

  /// 最低心电 mV
  static const double minY = -10;

  /// 最高心电 mV
  static const double maxY = 10;
}
