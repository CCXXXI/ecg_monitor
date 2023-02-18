import "package:package_info_plus/package_info_plus.dart";

const String monitor = "实时数据";
const String portraitDuration = "竖屏时长";
const String landscapeDuration = "横屏时长";
const String backgroundColor = "背景颜色";
const String lineColor = "折线颜色";
const String gridColor = "网格颜色";
const String horizontalLine = "横格线";
const String verticalLine = "竖格线";
const String lineTypeHide = "隐藏";
const String lineTypeSimple = "简化";
const String lineTypeFull = "完整";

const String analytics = "分析报告";
const String autoUpload = "自动上传";

const String deviceManager = "设备管理";
const String bluetoothConnected = "蓝牙已连接";
const String bluetoothRssi = "信号强度";
const String bluetoothRssiUnit = "dBm";
const String battery = "电量";
const String batteryUnknown = "电量未知";

const String mine = "我的";
const String feedback = "反馈";

const String settings = "设置";

const String devTools = "开发者工具";
const String fakeDevice = "模拟设备";
const String fakeDeviceModel = "Fake-Device";
const String modelTest = "模型测试";
const String loggerLevel = "日志等级";
const String showDots = "显示数据点";
const String resetSettings = "恢复默认设置";
const String rebootNeeded = "重启后生效";

const String about = "关于";
late final String appName;
late final String version;
const String changelog = "更新日志";

const String sentryDsn =
    "https://2f8266dc3f2947a186a1bb5a835f4b37@o996799.ingest.sentry.io"
    "/4504697112625152";

Future<void> initPackageInfo() async {
  final packageInfo = await PackageInfo.fromPlatform();
  appName = packageInfo.appName;
  version = "${packageInfo.version}+${packageInfo.buildNumber}";
}
