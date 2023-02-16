import "package:package_info_plus/package_info_plus.dart";

class Strings {
  static const String monitor = "实时数据";
  static const String portraitDuration = "竖屏时长";
  static const String landscapeDuration = "横屏时长";
  static const String backgroundColor = "背景颜色";
  static const String lineColor = "折线颜色";
  static const String gridColor = "网格颜色";
  static const String horizontalLine = "横格线";
  static const String verticalLine = "竖格线";
  static const String lineTypeHide = "隐藏";
  static const String lineTypeSimple = "简化";
  static const String lineTypeFull = "完整";

  static const String analytics = "分析报告";
  static const String autoUpload = "自动上传";

  static const String deviceManager = "设备管理";
  static const String bluetoothConnected = "蓝牙已连接";
  static const String bluetoothRssi = "信号强度";
  static const String bluetoothRssiUnit = "dBm";
  static const String battery = "电量";
  static const String batteryUnknown = "电量未知";

  static const String mine = "我的";

  static const String settings = "设置";

  static const String devTools = "开发者工具";
  static const String fakeDevice = "模拟设备";
  static const String fakeDeviceModel = "Fake-Device";
  static const String modelTest = "模型测试";
  static const String loggerLevel = "日志等级";
  static const String showDots = "显示数据点";
  static const String resetSettings = "恢复默认设置"; // todo: implement
  static const String rebootNeeded = "重启后生效"; // todo: reboot auto?

  static const String about = "关于";
  static late final String appName;
  static late final String version;
  static late final String license;
}

Future<void> initConstants() async {
  final packageInfo = await PackageInfo.fromPlatform();
  Strings.appName = packageInfo.appName;
  Strings.version = "${packageInfo.version}+${packageInfo.buildNumber}";
}
