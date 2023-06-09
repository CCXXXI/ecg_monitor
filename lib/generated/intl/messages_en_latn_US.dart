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
        "atrialFibrillation":
            MessageLookupByLibrary.simpleMessage("Atrial fibrillation"),
        "atrialFibrillationDesc": MessageLookupByLibrary.simpleMessage(
            "The most common type of irregular heart rhythm, where the atria contract rapidly and irregularly. This can lead to poor blood flow and increase the risk of blood clots, stroke, and heart failure."),
        "atrialFlutter": MessageLookupByLibrary.simpleMessage("Atrial flutter"),
        "atrialFlutterDesc": MessageLookupByLibrary.simpleMessage(
            "A type of abnormal heart rhythm that occurs when the atria contract too quickly, causing a fast and irregular heartbeat. It typically has a distinctive saw-tooth pattern on an electrocardiogram (ECG)."),
        "atrialPrematureBeat":
            MessageLookupByLibrary.simpleMessage("Atrial premature beat"),
        "atrialPrematureBeatDesc": MessageLookupByLibrary.simpleMessage(
            "An irregular heartbeat that originates in the atria (upper chambers of the heart) and occurs earlier than the next expected normal heartbeat. This can sometimes be felt as a palpitation or skipped beat."),
        "atrioventricularBlock":
            MessageLookupByLibrary.simpleMessage("Atrioventricular block"),
        "atrioventricularBlockDesc": MessageLookupByLibrary.simpleMessage(
            "A condition where the electrical signals between the atria and ventricles are delayed or blocked, which can result in a slower heart rate and other symptoms such as dizziness, fainting, and shortness of breath."),
        "autoGenerate": MessageLookupByLibrary.simpleMessage("Auto generate"),
        "autoUpload": MessageLookupByLibrary.simpleMessage("Auto upload"),
        "battery": MessageLookupByLibrary.simpleMessage("Battery"),
        "batteryUnknown":
            MessageLookupByLibrary.simpleMessage("Battery unknown"),
        "bluetoothConnected":
            MessageLookupByLibrary.simpleMessage("Bluetooth connected"),
        "bluetoothConnecting":
            MessageLookupByLibrary.simpleMessage("Bluetooth connecting ..."),
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
        "deviceManager": MessageLookupByLibrary.simpleMessage("Device"),
        "deviceNotConnected":
            MessageLookupByLibrary.simpleMessage("Device not connected"),
        "disconnectDevice":
            MessageLookupByLibrary.simpleMessage("Disconnect device"),
        "fakeDevice": MessageLookupByLibrary.simpleMessage("Fake device"),
        "feedback": MessageLookupByLibrary.simpleMessage("Feedback"),
        "from": MessageLookupByLibrary.simpleMessage("From"),
        "gridColor": MessageLookupByLibrary.simpleMessage("Grid color"),
        "heartRateDetecting":
            MessageLookupByLibrary.simpleMessage("Heart rate detecting ..."),
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "horizontalLines": MessageLookupByLibrary.simpleMessage("Hor. lines"),
        "landscapeDuration":
            MessageLookupByLibrary.simpleMessage("Land. duration"),
        "leadI": MessageLookupByLibrary.simpleMessage("Lead I"),
        "leadII": MessageLookupByLibrary.simpleMessage("Lead II"),
        "leadIII": MessageLookupByLibrary.simpleMessage("Lead III"),
        "lineTypeFull": MessageLookupByLibrary.simpleMessage("full"),
        "lineTypeHide": MessageLookupByLibrary.simpleMessage("hide"),
        "lineTypeSimple": MessageLookupByLibrary.simpleMessage("simp."),
        "loadFakeSamplePoints":
            MessageLookupByLibrary.simpleMessage("Load fake sample points"),
        "loggerLevel": MessageLookupByLibrary.simpleMessage("Logger level"),
        "me": MessageLookupByLibrary.simpleMessage("Me"),
        "minDistance": MessageLookupByLibrary.simpleMessage("Min distance"),
        "networkTest": MessageLookupByLibrary.simpleMessage("Network test"),
        "noDeviceFound":
            MessageLookupByLibrary.simpleMessage("No device found"),
        "noHistoryData": MessageLookupByLibrary.simpleMessage(
            "No data at the selected time"),
        "noise": MessageLookupByLibrary.simpleMessage("Noise"),
        "noiseDesc": MessageLookupByLibrary.simpleMessage(
            "In continuous monitoring, ECG signal is corrupted by different noises."),
        "paroxysmalSupraVentricularTachycardia":
            MessageLookupByLibrary.simpleMessage(
                "Paroxysmal supra-ventricular tachycardia"),
        "paroxysmalSupraVentricularTachycardiaDesc":
            MessageLookupByLibrary.simpleMessage(
                "A sudden, rapid heart rate that originates above the ventricles and can be caused by abnormal electrical signals in the heart. It usually starts and stops suddenly, and can cause symptoms such as palpitations, chest pain, and dizziness."),
        "portraitDuration":
            MessageLookupByLibrary.simpleMessage("Port. duration"),
        "professional": MessageLookupByLibrary.simpleMessage("prof."),
        "realTime": MessageLookupByLibrary.simpleMessage("Real time"),
        "refreshRate": MessageLookupByLibrary.simpleMessage("Refresh rate"),
        "restart": MessageLookupByLibrary.simpleMessage("Restart"),
        "restartNeeded": MessageLookupByLibrary.simpleMessage("Restart needed"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "showDevTools": MessageLookupByLibrary.simpleMessage("Show dev tools"),
        "showDots": MessageLookupByLibrary.simpleMessage("Show dots"),
        "simple": MessageLookupByLibrary.simpleMessage("simp."),
        "sinusRhythm": MessageLookupByLibrary.simpleMessage("Sinus rhythm"),
        "sinusRhythmDesc": MessageLookupByLibrary.simpleMessage(
            "A normal heart rhythm originating from the sinoatrial (SA) node, which is the natural pacemaker of the heart. The sinus rhythm produces regular electrical impulses that cause the heart to contract and pump blood effectively."),
        "style": MessageLookupByLibrary.simpleMessage("Style"),
        "to": MessageLookupByLibrary.simpleMessage("To"),
        "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "unknownDesc": MessageLookupByLibrary.simpleMessage(
            "Heart beats that have not been classified yet."),
        "ventricularFlutterAndFibrillation":
            MessageLookupByLibrary.simpleMessage(
                "Ventricular flutter and fibrillation"),
        "ventricularFlutterAndFibrillationDesc":
            MessageLookupByLibrary.simpleMessage(
                "Life-threatening arrhythmias that occur when the ventricles contract too quickly and irregularly, which can result in the heart not being able to pump blood effectively."),
        "ventricularPreExcitation":
            MessageLookupByLibrary.simpleMessage("Ventricular pre-excitation"),
        "ventricularPreExcitationDesc": MessageLookupByLibrary.simpleMessage(
            "A condition where there is an extra pathway in the heart that allows electrical impulses to bypass the usual route through the atrioventricular (AV) node. This can lead to a rapid heartbeat and an increased risk of arrhythmias."),
        "ventricularPrematureBeat":
            MessageLookupByLibrary.simpleMessage("Ventricular premature beat"),
        "ventricularPrematureBeatDesc": MessageLookupByLibrary.simpleMessage(
            "A type of irregular heartbeat that originates from the ventricles (lower chambers of the heart) and occurs earlier than the next expected normal heartbeat."),
        "verticalLines": MessageLookupByLibrary.simpleMessage("Ver. lines")
      };
}
