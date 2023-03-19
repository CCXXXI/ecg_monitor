// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_latn_US locale. All the
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
  String get localeName => 'en_latn_US';

  static String m0(rssi) => "RSSI: ${rssi} dBm";

  static String m1(mode) => "Current build mode: ${mode}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("About"),
        "analytics": MessageLookupByLibrary.simpleMessage("Analytics"),
        "appName": MessageLookupByLibrary.simpleMessage("ECG Monitor"),
        "autoGenerate": MessageLookupByLibrary.simpleMessage("Auto generate"),
        "autoUpload": MessageLookupByLibrary.simpleMessage("Auto upload"),
        "backgroundColor":
            MessageLookupByLibrary.simpleMessage("Background color"),
        "battery": MessageLookupByLibrary.simpleMessage("Battery"),
        "batteryUnknown":
            MessageLookupByLibrary.simpleMessage("Battery unknown"),
        "bluetoothConnected":
            MessageLookupByLibrary.simpleMessage("Bluetooth connected"),
        "bluetoothDisconnected":
            MessageLookupByLibrary.simpleMessage("Bluetooth disconnected"),
        "bluetoothRssi": m0,
        "bluetoothSearching":
            MessageLookupByLibrary.simpleMessage("Searching for devices ..."),
        "bpm": MessageLookupByLibrary.simpleMessage("BPM"),
        "changelog": MessageLookupByLibrary.simpleMessage("Changelog"),
        "currentBuildMode": m1,
        "custom": MessageLookupByLibrary.simpleMessage("custom"),
        "devTools": MessageLookupByLibrary.simpleMessage("Dev tools"),
        "devToolsDesc": MessageLookupByLibrary.simpleMessage(
            "Some tools are only available in debug mode"),
        "deviceManager": MessageLookupByLibrary.simpleMessage("Device manager"),
        "deviceNotConnected":
            MessageLookupByLibrary.simpleMessage("Device not connected"),
        "disconnectDevice":
            MessageLookupByLibrary.simpleMessage("Disconnect device"),
        "fakeDevice": MessageLookupByLibrary.simpleMessage("Fake device"),
        "feedback": MessageLookupByLibrary.simpleMessage("Feedback"),
        "gridColor": MessageLookupByLibrary.simpleMessage("Grid color"),
        "heartRateDetecting":
            MessageLookupByLibrary.simpleMessage("Heart rate detecting ..."),
        "heartRateNotAvailableOnWeb": MessageLookupByLibrary.simpleMessage(
            "Heart rate is not available on web"),
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "horizontalLines":
            MessageLookupByLibrary.simpleMessage("Horizontal lines"),
        "landscapeDuration":
            MessageLookupByLibrary.simpleMessage("Landscape duration"),
        "leadI": MessageLookupByLibrary.simpleMessage("Lead I"),
        "leadII": MessageLookupByLibrary.simpleMessage("Lead II"),
        "leadIII": MessageLookupByLibrary.simpleMessage("Lead III"),
        "lineColor": MessageLookupByLibrary.simpleMessage("Line color"),
        "lineTypeFull": MessageLookupByLibrary.simpleMessage("full"),
        "lineTypeHide": MessageLookupByLibrary.simpleMessage("hide"),
        "lineTypeSimple": MessageLookupByLibrary.simpleMessage("simple"),
        "loggerLevel": MessageLookupByLibrary.simpleMessage("Logger level"),
        "me": MessageLookupByLibrary.simpleMessage("Me"),
        "minDistance": MessageLookupByLibrary.simpleMessage("Min distance"),
        "networkTest": MessageLookupByLibrary.simpleMessage("Network test"),
        "noDeviceFound":
            MessageLookupByLibrary.simpleMessage("No device found"),
        "portraitDuration":
            MessageLookupByLibrary.simpleMessage("Portrait duration"),
        "professional": MessageLookupByLibrary.simpleMessage("professional"),
        "realTime": MessageLookupByLibrary.simpleMessage("Real time"),
        "refreshRate": MessageLookupByLibrary.simpleMessage("Refresh rate"),
        "restart": MessageLookupByLibrary.simpleMessage("Restart"),
        "restartNeeded": MessageLookupByLibrary.simpleMessage("Restart needed"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "showDevTools": MessageLookupByLibrary.simpleMessage("Show dev tools"),
        "showDots": MessageLookupByLibrary.simpleMessage("Show dots"),
        "simple": MessageLookupByLibrary.simpleMessage("simple"),
        "style": MessageLookupByLibrary.simpleMessage("Style"),
        "verticalLines": MessageLookupByLibrary.simpleMessage("Vertical lines")
      };
}
