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
        "atrialFibrillation": MessageLookupByLibrary.simpleMessage("心房颤动"),
        "atrialFibrillationDesc": MessageLookupByLibrary.simpleMessage(
            "最常见的异常心律，当心房快速而不规则地收缩时会发生。这可能导致血液流动不畅，增加血栓、中风和心力衰竭的风险。"),
        "atrialFlutter": MessageLookupByLibrary.simpleMessage("心房扑动"),
        "atrialFlutterDesc": MessageLookupByLibrary.simpleMessage(
            "一种异常的心律，当心房收缩过快时，会引起快速和不规则的心跳。通常在心电图上有一个特有的锯齿状图案。"),
        "atrialPrematureBeat": MessageLookupByLibrary.simpleMessage("房性早搏"),
        "atrialPrematureBeatDesc": MessageLookupByLibrary.simpleMessage(
            "一种异常的心律，起源于心脏的心房（上腔室），比下一个期望的正常心跳提前发生。有时会感到心悸或漏博。"),
        "atrioventricularBlock": MessageLookupByLibrary.simpleMessage("房室传导阻滞"),
        "atrioventricularBlockDesc": MessageLookupByLibrary.simpleMessage(
            "一种异常的心律，心房和心室之间的电信号被延迟或阻断，可能导致心跳减缓和其他症状，如头晕、晕厥和呼吸急促。"),
        "autoGenerate": MessageLookupByLibrary.simpleMessage("自动生成"),
        "autoUpload": MessageLookupByLibrary.simpleMessage("自动上传"),
        "backgroundColor": MessageLookupByLibrary.simpleMessage("背景颜色"),
        "battery": MessageLookupByLibrary.simpleMessage("电量"),
        "batteryUnknown": MessageLookupByLibrary.simpleMessage("电量未知"),
        "bluetoothConnected": MessageLookupByLibrary.simpleMessage("蓝牙已连接"),
        "bluetoothConnecting":
            MessageLookupByLibrary.simpleMessage("正在连接蓝牙设备……"),
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
        "from": MessageLookupByLibrary.simpleMessage("从"),
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
        "loadFakeSamplePoints":
            MessageLookupByLibrary.simpleMessage("加载模拟采样点数据"),
        "loggerLevel": MessageLookupByLibrary.simpleMessage("日志等级"),
        "me": MessageLookupByLibrary.simpleMessage("我的"),
        "minDistance": MessageLookupByLibrary.simpleMessage("最小点间距"),
        "networkTest": MessageLookupByLibrary.simpleMessage("网络测试"),
        "noDeviceFound": MessageLookupByLibrary.simpleMessage("未发现设备"),
        "noHistoryData": MessageLookupByLibrary.simpleMessage("所选时间没有数据"),
        "noise": MessageLookupByLibrary.simpleMessage("噪声"),
        "noiseDesc":
            MessageLookupByLibrary.simpleMessage("在连续监测中，心电图信号会受到不同噪声的干扰。"),
        "paroxysmalSupraVentricularTachycardia":
            MessageLookupByLibrary.simpleMessage("阵发性室上性心动过速"),
        "paroxysmalSupraVentricularTachycardiaDesc":
            MessageLookupByLibrary.simpleMessage(
                "一种突然发生的快速心跳，起源于心脏上部，可能是由于心脏异常电信号引起的。它通常突然开始和停止，可能导致心悸、胸痛和头晕等症状。"),
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
        "sinusRhythm": MessageLookupByLibrary.simpleMessage("窦性心律"),
        "sinusRhythmDesc": MessageLookupByLibrary.simpleMessage(
            "一种正常的心律，起源于心脏的窦房结，它产生规律的电脉冲，使心脏有效地收缩和泵血。"),
        "style": MessageLookupByLibrary.simpleMessage("显示风格"),
        "to": MessageLookupByLibrary.simpleMessage("到"),
        "unknown": MessageLookupByLibrary.simpleMessage("未知"),
        "unknownDesc": MessageLookupByLibrary.simpleMessage("尚未分类的心跳。"),
        "ventricularFlutterAndFibrillation":
            MessageLookupByLibrary.simpleMessage("室扑室颤"),
        "ventricularFlutterAndFibrillationDesc":
            MessageLookupByLibrary.simpleMessage(
                "危及生命的心律失常，当室壁过快和不规则收缩时，可能导致心脏无法有效地泵血。"),
        "ventricularPreExcitation":
            MessageLookupByLibrary.simpleMessage("心室预激"),
        "ventricularPreExcitationDesc": MessageLookupByLibrary.simpleMessage(
            "一种异常的心律，存在一条额外的传导路径，使电脉冲可以绕过正常的房室结路线，这可能导致心跳加速和心律失常的风险增加。"),
        "ventricularPrematureBeat":
            MessageLookupByLibrary.simpleMessage("室性早搏"),
        "ventricularPrematureBeatDesc": MessageLookupByLibrary.simpleMessage(
            "一种异常的心律，起源于心脏的室壁（下腔室），比下一个期望的正常心跳提前发生。"),
        "verticalLines": MessageLookupByLibrary.simpleMessage("垂直网格线")
      };
}
