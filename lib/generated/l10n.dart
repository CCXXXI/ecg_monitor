// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ECG Monitor`
  String get appName {
    return Intl.message(
      'ECG Monitor',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Real time`
  String get realTime {
    return Intl.message(
      'Real time',
      name: 'realTime',
      desc: '',
      args: [],
    );
  }

  /// `Device not connected`
  String get deviceNotConnected {
    return Intl.message(
      'Device not connected',
      name: 'deviceNotConnected',
      desc: '',
      args: [],
    );
  }

  /// `BPM`
  String get bpm {
    return Intl.message(
      'BPM',
      name: 'bpm',
      desc: '',
      args: [],
    );
  }

  /// `Heart rate detecting ...`
  String get heartRateDetecting {
    return Intl.message(
      'Heart rate detecting ...',
      name: 'heartRateDetecting',
      desc: '',
      args: [],
    );
  }

  /// `Lead I`
  String get leadI {
    return Intl.message(
      'Lead I',
      name: 'leadI',
      desc: '',
      args: [],
    );
  }

  /// `Lead II`
  String get leadII {
    return Intl.message(
      'Lead II',
      name: 'leadII',
      desc: '',
      args: [],
    );
  }

  /// `Lead III`
  String get leadIII {
    return Intl.message(
      'Lead III',
      name: 'leadIII',
      desc: '',
      args: [],
    );
  }

  /// `Style`
  String get style {
    return Intl.message(
      'Style',
      name: 'style',
      desc: '',
      args: [],
    );
  }

  /// `simp.`
  String get simple {
    return Intl.message(
      'simp.',
      name: 'simple',
      desc: '',
      args: [],
    );
  }

  /// `prof.`
  String get professional {
    return Intl.message(
      'prof.',
      name: 'professional',
      desc: '',
      args: [],
    );
  }

  /// `custom`
  String get custom {
    return Intl.message(
      'custom',
      name: 'custom',
      desc: '',
      args: [],
    );
  }

  /// `Port. duration`
  String get portraitDuration {
    return Intl.message(
      'Port. duration',
      name: 'portraitDuration',
      desc: '',
      args: [],
    );
  }

  /// `Land. duration`
  String get landscapeDuration {
    return Intl.message(
      'Land. duration',
      name: 'landscapeDuration',
      desc: '',
      args: [],
    );
  }

  /// `Refresh rate`
  String get refreshRate {
    return Intl.message(
      'Refresh rate',
      name: 'refreshRate',
      desc: '',
      args: [],
    );
  }

  /// `Min distance`
  String get minDistance {
    return Intl.message(
      'Min distance',
      name: 'minDistance',
      desc: '',
      args: [],
    );
  }

  /// `Grid color`
  String get gridColor {
    return Intl.message(
      'Grid color',
      name: 'gridColor',
      desc: '',
      args: [],
    );
  }

  /// `Hor. lines`
  String get horizontalLines {
    return Intl.message(
      'Hor. lines',
      name: 'horizontalLines',
      desc: '',
      args: [],
    );
  }

  /// `Ver. lines`
  String get verticalLines {
    return Intl.message(
      'Ver. lines',
      name: 'verticalLines',
      desc: '',
      args: [],
    );
  }

  /// `hide`
  String get lineTypeHide {
    return Intl.message(
      'hide',
      name: 'lineTypeHide',
      desc: '',
      args: [],
    );
  }

  /// `simp.`
  String get lineTypeSimple {
    return Intl.message(
      'simp.',
      name: 'lineTypeSimple',
      desc: '',
      args: [],
    );
  }

  /// `full`
  String get lineTypeFull {
    return Intl.message(
      'full',
      name: 'lineTypeFull',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Auto upload`
  String get autoUpload {
    return Intl.message(
      'Auto upload',
      name: 'autoUpload',
      desc: '',
      args: [],
    );
  }

  /// `Analytics`
  String get analytics {
    return Intl.message(
      'Analytics',
      name: 'analytics',
      desc: '',
      args: [],
    );
  }

  /// `Auto generate`
  String get autoGenerate {
    return Intl.message(
      'Auto generate',
      name: 'autoGenerate',
      desc: '',
      args: [],
    );
  }

  /// `Device`
  String get deviceManager {
    return Intl.message(
      'Device',
      name: 'deviceManager',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth connecting ...`
  String get bluetoothConnecting {
    return Intl.message(
      'Bluetooth connecting ...',
      name: 'bluetoothConnecting',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth connected`
  String get bluetoothConnected {
    return Intl.message(
      'Bluetooth connected',
      name: 'bluetoothConnected',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth disconnected`
  String get bluetoothDisconnected {
    return Intl.message(
      'Bluetooth disconnected',
      name: 'bluetoothDisconnected',
      desc: '',
      args: [],
    );
  }

  /// `RSSI: {rssi} dBm`
  String bluetoothRssi(Object rssi) {
    return Intl.message(
      'RSSI: $rssi dBm',
      name: 'bluetoothRssi',
      desc: '',
      args: [rssi],
    );
  }

  /// `Battery`
  String get battery {
    return Intl.message(
      'Battery',
      name: 'battery',
      desc: '',
      args: [],
    );
  }

  /// `Battery unknown`
  String get batteryUnknown {
    return Intl.message(
      'Battery unknown',
      name: 'batteryUnknown',
      desc: '',
      args: [],
    );
  }

  /// `Searching for devices ...`
  String get bluetoothSearching {
    return Intl.message(
      'Searching for devices ...',
      name: 'bluetoothSearching',
      desc: '',
      args: [],
    );
  }

  /// `No device found`
  String get noDeviceFound {
    return Intl.message(
      'No device found',
      name: 'noDeviceFound',
      desc: '',
      args: [],
    );
  }

  /// `Disconnect device`
  String get disconnectDevice {
    return Intl.message(
      'Disconnect device',
      name: 'disconnectDevice',
      desc: '',
      args: [],
    );
  }

  /// `Me`
  String get me {
    return Intl.message(
      'Me',
      name: 'me',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedback {
    return Intl.message(
      'Feedback',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Dev tools`
  String get devTools {
    return Intl.message(
      'Dev tools',
      name: 'devTools',
      desc: '',
      args: [],
    );
  }

  /// `Show dev tools`
  String get showDevTools {
    return Intl.message(
      'Show dev tools',
      name: 'showDevTools',
      desc: '',
      args: [],
    );
  }

  /// `Some tools are only available in debug mode`
  String get devToolsDesc {
    return Intl.message(
      'Some tools are only available in debug mode',
      name: 'devToolsDesc',
      desc: '',
      args: [],
    );
  }

  /// `Current build mode: {mode}`
  String currentBuildMode(Object mode) {
    return Intl.message(
      'Current build mode: $mode',
      name: 'currentBuildMode',
      desc: '',
      args: [mode],
    );
  }

  /// `Restart needed`
  String get restartNeeded {
    return Intl.message(
      'Restart needed',
      name: 'restartNeeded',
      desc: '',
      args: [],
    );
  }

  /// `Restart`
  String get restart {
    return Intl.message(
      'Restart',
      name: 'restart',
      desc: '',
      args: [],
    );
  }

  /// `Fake device`
  String get fakeDevice {
    return Intl.message(
      'Fake device',
      name: 'fakeDevice',
      desc: '',
      args: [],
    );
  }

  /// `Load fake sample points`
  String get loadFakeSamplePoints {
    return Intl.message(
      'Load fake sample points',
      name: 'loadFakeSamplePoints',
      desc: '',
      args: [],
    );
  }

  /// `Logger level`
  String get loggerLevel {
    return Intl.message(
      'Logger level',
      name: 'loggerLevel',
      desc: '',
      args: [],
    );
  }

  /// `Network test`
  String get networkTest {
    return Intl.message(
      'Network test',
      name: 'networkTest',
      desc: '',
      args: [],
    );
  }

  /// `Show dots`
  String get showDots {
    return Intl.message(
      'Show dots',
      name: 'showDots',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Changelog`
  String get changelog {
    return Intl.message(
      'Changelog',
      name: 'changelog',
      desc: '',
      args: [],
    );
  }

  /// `No data at the selected time`
  String get noHistoryData {
    return Intl.message(
      'No data at the selected time',
      name: 'noHistoryData',
      desc: '',
      args: [],
    );
  }

  /// `Sinus rhythm`
  String get sinusRhythm {
    return Intl.message(
      'Sinus rhythm',
      name: 'sinusRhythm',
      desc: '',
      args: [],
    );
  }

  /// `Atrial premature beat`
  String get atrialPrematureBeat {
    return Intl.message(
      'Atrial premature beat',
      name: 'atrialPrematureBeat',
      desc: '',
      args: [],
    );
  }

  /// `Atrial flutter`
  String get atrialFlutter {
    return Intl.message(
      'Atrial flutter',
      name: 'atrialFlutter',
      desc: '',
      args: [],
    );
  }

  /// `Atrial fibrillation`
  String get atrialFibrillation {
    return Intl.message(
      'Atrial fibrillation',
      name: 'atrialFibrillation',
      desc: '',
      args: [],
    );
  }

  /// `Ventricular premature beat`
  String get ventricularPrematureBeat {
    return Intl.message(
      'Ventricular premature beat',
      name: 'ventricularPrematureBeat',
      desc: '',
      args: [],
    );
  }

  /// `Paroxysmal supra-ventricular tachycardia`
  String get paroxysmalSupraVentricularTachycardia {
    return Intl.message(
      'Paroxysmal supra-ventricular tachycardia',
      name: 'paroxysmalSupraVentricularTachycardia',
      desc: '',
      args: [],
    );
  }

  /// `Ventricular pre-excitation`
  String get ventricularPreExcitation {
    return Intl.message(
      'Ventricular pre-excitation',
      name: 'ventricularPreExcitation',
      desc: '',
      args: [],
    );
  }

  /// `Ventricular flutter and fibrillation`
  String get ventricularFlutterAndFibrillation {
    return Intl.message(
      'Ventricular flutter and fibrillation',
      name: 'ventricularFlutterAndFibrillation',
      desc: '',
      args: [],
    );
  }

  /// `Atrioventricular block`
  String get atrioventricularBlock {
    return Intl.message(
      'Atrioventricular block',
      name: 'atrioventricularBlock',
      desc: '',
      args: [],
    );
  }

  /// `Noise`
  String get noise {
    return Intl.message(
      'Noise',
      name: 'noise',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `A normal heart rhythm originating from the sinoatrial (SA) node, which is the natural pacemaker of the heart. The sinus rhythm produces regular electrical impulses that cause the heart to contract and pump blood effectively.`
  String get sinusRhythmDesc {
    return Intl.message(
      'A normal heart rhythm originating from the sinoatrial (SA) node, which is the natural pacemaker of the heart. The sinus rhythm produces regular electrical impulses that cause the heart to contract and pump blood effectively.',
      name: 'sinusRhythmDesc',
      desc: '',
      args: [],
    );
  }

  /// `An irregular heartbeat that originates in the atria (upper chambers of the heart) and occurs earlier than the next expected normal heartbeat. This can sometimes be felt as a palpitation or skipped beat.`
  String get atrialPrematureBeatDesc {
    return Intl.message(
      'An irregular heartbeat that originates in the atria (upper chambers of the heart) and occurs earlier than the next expected normal heartbeat. This can sometimes be felt as a palpitation or skipped beat.',
      name: 'atrialPrematureBeatDesc',
      desc: '',
      args: [],
    );
  }

  /// `A type of abnormal heart rhythm that occurs when the atria contract too quickly, causing a fast and irregular heartbeat. It typically has a distinctive saw-tooth pattern on an electrocardiogram (ECG).`
  String get atrialFlutterDesc {
    return Intl.message(
      'A type of abnormal heart rhythm that occurs when the atria contract too quickly, causing a fast and irregular heartbeat. It typically has a distinctive saw-tooth pattern on an electrocardiogram (ECG).',
      name: 'atrialFlutterDesc',
      desc: '',
      args: [],
    );
  }

  /// `The most common type of irregular heart rhythm, where the atria contract rapidly and irregularly. This can lead to poor blood flow and increase the risk of blood clots, stroke, and heart failure.`
  String get atrialFibrillationDesc {
    return Intl.message(
      'The most common type of irregular heart rhythm, where the atria contract rapidly and irregularly. This can lead to poor blood flow and increase the risk of blood clots, stroke, and heart failure.',
      name: 'atrialFibrillationDesc',
      desc: '',
      args: [],
    );
  }

  /// `A type of irregular heartbeat that originates from the ventricles (lower chambers of the heart) and occurs earlier than the next expected normal heartbeat.`
  String get ventricularPrematureBeatDesc {
    return Intl.message(
      'A type of irregular heartbeat that originates from the ventricles (lower chambers of the heart) and occurs earlier than the next expected normal heartbeat.',
      name: 'ventricularPrematureBeatDesc',
      desc: '',
      args: [],
    );
  }

  /// `A sudden, rapid heart rate that originates above the ventricles and can be caused by abnormal electrical signals in the heart. It usually starts and stops suddenly, and can cause symptoms such as palpitations, chest pain, and dizziness.`
  String get paroxysmalSupraVentricularTachycardiaDesc {
    return Intl.message(
      'A sudden, rapid heart rate that originates above the ventricles and can be caused by abnormal electrical signals in the heart. It usually starts and stops suddenly, and can cause symptoms such as palpitations, chest pain, and dizziness.',
      name: 'paroxysmalSupraVentricularTachycardiaDesc',
      desc: '',
      args: [],
    );
  }

  /// `A condition where there is an extra pathway in the heart that allows electrical impulses to bypass the usual route through the atrioventricular (AV) node. This can lead to a rapid heartbeat and an increased risk of arrhythmias.`
  String get ventricularPreExcitationDesc {
    return Intl.message(
      'A condition where there is an extra pathway in the heart that allows electrical impulses to bypass the usual route through the atrioventricular (AV) node. This can lead to a rapid heartbeat and an increased risk of arrhythmias.',
      name: 'ventricularPreExcitationDesc',
      desc: '',
      args: [],
    );
  }

  /// `Life-threatening arrhythmias that occur when the ventricles contract too quickly and irregularly, which can result in the heart not being able to pump blood effectively.`
  String get ventricularFlutterAndFibrillationDesc {
    return Intl.message(
      'Life-threatening arrhythmias that occur when the ventricles contract too quickly and irregularly, which can result in the heart not being able to pump blood effectively.',
      name: 'ventricularFlutterAndFibrillationDesc',
      desc: '',
      args: [],
    );
  }

  /// `A condition where the electrical signals between the atria and ventricles are delayed or blocked, which can result in a slower heart rate and other symptoms such as dizziness, fainting, and shortness of breath.`
  String get atrioventricularBlockDesc {
    return Intl.message(
      'A condition where the electrical signals between the atria and ventricles are delayed or blocked, which can result in a slower heart rate and other symptoms such as dizziness, fainting, and shortness of breath.',
      name: 'atrioventricularBlockDesc',
      desc: '',
      args: [],
    );
  }

  /// `In continuous monitoring, ECG signal is corrupted by different noises.`
  String get noiseDesc {
    return Intl.message(
      'In continuous monitoring, ECG signal is corrupted by different noises.',
      name: 'noiseDesc',
      desc: '',
      args: [],
    );
  }

  /// `Heart beats that have not been classified yet.`
  String get unknownDesc {
    return Intl.message(
      'Heart beats that have not been classified yet.',
      name: 'unknownDesc',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message(
      'From',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get to {
    return Intl.message(
      'To',
      name: 'to',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(
          languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
