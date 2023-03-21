// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_Hans_CN locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh_Hans_CN';

  static String m0(rssi) => "信号强度：${rssi} dBm";

  static String m1(mode) => "当前构建模式：${mode}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("关于"),
        "analytics": MessageLookupByLibrary.simpleMessage("分析报告"),
        "appName": MessageLookupByLibrary.simpleMessage("心电监测"),
        "autoGenerate": MessageLookupByLibrary.simpleMessage("自动生成"),
        "autoUpload": MessageLookupByLibrary.simpleMessage("自动上传"),
        "backgroundColor": MessageLookupByLibrary.simpleMessage("背景颜色"),
        "battery": MessageLookupByLibrary.simpleMessage("电量"),
        "batteryUnknown": MessageLookupByLibrary.simpleMessage("电量未知"),
        "bluetoothConnected": MessageLookupByLibrary.simpleMessage("蓝牙已连接"),
        "bluetoothDisconnected": MessageLookupByLibrary.simpleMessage("蓝牙已断开"),
        "bluetoothRssi": m0,
        "bluetoothSearching":
            MessageLookupByLibrary.simpleMessage("正在搜索蓝牙设备……"),
        "bpm": MessageLookupByLibrary.simpleMessage("次/分"),
        "changelog": MessageLookupByLibrary.simpleMessage("更新日志"),
        "currentBuildMode": m1,
        "custom": MessageLookupByLibrary.simpleMessage("自定"),
        "devTools": MessageLookupByLibrary.simpleMessage("开发者工具"),
        "devToolsDesc":
            MessageLookupByLibrary.simpleMessage("部分工具仅在 Debug 构建中可用"),
        "deviceManager": MessageLookupByLibrary.simpleMessage("设备管理"),
        "deviceNotConnected": MessageLookupByLibrary.simpleMessage("设备未连接"),
        "disconnectDevice": MessageLookupByLibrary.simpleMessage("解绑设备"),
        "fakeDevice": MessageLookupByLibrary.simpleMessage("模拟设备"),
        "feedback": MessageLookupByLibrary.simpleMessage("反馈"),
        "gridColor": MessageLookupByLibrary.simpleMessage("网格颜色"),
        "heartRateDetecting": MessageLookupByLibrary.simpleMessage("正在检测心率……"),
        "history": MessageLookupByLibrary.simpleMessage("历史心电"),
        "horizontalLines": MessageLookupByLibrary.simpleMessage("水平网格线"),
        "landscapeDuration": MessageLookupByLibrary.simpleMessage("横屏数据范围"),
        "leadI": MessageLookupByLibrary.simpleMessage("I 导联"),
        "leadII": MessageLookupByLibrary.simpleMessage("II 导联"),
        "leadIII": MessageLookupByLibrary.simpleMessage("III 导联"),
        "lineColor": MessageLookupByLibrary.simpleMessage("折线颜色"),
        "lineTypeFull": MessageLookupByLibrary.simpleMessage("完整"),
        "lineTypeHide": MessageLookupByLibrary.simpleMessage("隐藏"),
        "lineTypeSimple": MessageLookupByLibrary.simpleMessage("简化"),
        "loggerLevel": MessageLookupByLibrary.simpleMessage("日志等级"),
        "me": MessageLookupByLibrary.simpleMessage("我的"),
        "minDistance": MessageLookupByLibrary.simpleMessage("最小点间距"),
        "networkTest": MessageLookupByLibrary.simpleMessage("网络测试"),
        "noDeviceFound": MessageLookupByLibrary.simpleMessage("未发现设备"),
        "portraitDuration": MessageLookupByLibrary.simpleMessage("竖屏数据范围"),
        "professional": MessageLookupByLibrary.simpleMessage("专业"),
        "realTime": MessageLookupByLibrary.simpleMessage("实时心电"),
        "refreshRate": MessageLookupByLibrary.simpleMessage("刷新率"),
        "restart": MessageLookupByLibrary.simpleMessage("重启"),
        "restartNeeded": MessageLookupByLibrary.simpleMessage("需要重启应用"),
        "settings": MessageLookupByLibrary.simpleMessage("设置"),
        "showDevTools": MessageLookupByLibrary.simpleMessage("显示开发者工具"),
        "showDots": MessageLookupByLibrary.simpleMessage("显示数据点"),
        "simple": MessageLookupByLibrary.simpleMessage("简洁"),
        "style": MessageLookupByLibrary.simpleMessage("显示风格"),
        "verticalLines": MessageLookupByLibrary.simpleMessage("垂直网格线")
      };
}
