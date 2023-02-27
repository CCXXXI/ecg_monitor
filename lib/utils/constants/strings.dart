import "package:package_info_plus/package_info_plus.dart";

const realTime = "实时心电";
const style = "样式";
const professional = "专业";
const simple = "简洁";
const custom = "自定义";
const portraitDuration = "竖屏数据范围";
const landscapeDuration = "横屏数据范围";
const refreshRate = "刷新率";
const minDistance = "最小点间距";
const backgroundColor = "背景颜色";
const lineColor = "折线颜色";
const gridColor = "网格颜色";
const horizontalLine = "水平网格线";
const verticalLine = "垂直网格线";
const lineTypeHide = "隐藏";
const lineTypeSimple = "简化";
const lineTypeFull = "完整";

const history = "历史心电";
const autoUpload = "自动上传";

const analytics = "分析报告";

const deviceManager = "设备管理";
const bluetoothConnected = "蓝牙已连接";
const bluetoothDisconnected = "蓝牙已断开";
const bluetoothRssi = "信号强度";
const bluetoothRssiUnit = "dBm";
const battery = "电量";
const batteryUnknown = "电量未知";
const bluetoothSearching = "正在搜索蓝牙设备";
const noDeviceFound = "未发现设备";
const disconnectDevice = "解绑设备";

const me = "我的";
const feedback = "反馈";

const settings = "设置";

const devTools = "开发者工具";
const fakeDevice = "模拟设备";
const fakeDeviceModel = "Fake-Device";
const modelTest = "模型测试";
const pass = "通过";
const fail = "失败";
const loggerLevel = "日志等级";
const showDots = "显示数据点";

const about = "关于";
const appName = "心电监测";
late final String version;
const changelog = "更新日志";

const sentryDsn =
    "https://2f8266dc3f2947a186a1bb5a835f4b37@o996799.ingest.sentry.io"
    "/4504697112625152";

Future<void> initPackageInfo() async {
  final packageInfo = await PackageInfo.fromPlatform();
  version = "${packageInfo.version}+${packageInfo.buildNumber}";
}
