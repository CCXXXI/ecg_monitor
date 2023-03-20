import "package:freezed_annotation/freezed_annotation.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../database.dart";
import "../utils/strings.dart";
import "fake_device.dart";

part "device.freezed.dart";
part "device.g.dart";

@freezed
class EcgData with _$EcgData {
  const factory EcgData({
    required DateTime time,

    /// mV
    required double leadI,

    /// mV
    required double leadII,
  }) = _EcgData;

  const EcgData._();

  // See: https://en.wikipedia.org/wiki/Einthoven%27s_triangle
  double get leadIII => leadII - leadI;
}

abstract class Device {
  String get id;

  String get name;

  String get model;

  /// Sampling Frequency
  int get fs;

  Stream<bool> get connectedStream;

  /// Received Signal Strength Indication
  Stream<int> get rssiStream;

  Stream<int> get batteryStream;

  Stream<EcgData> get ecgStream;
}

@riverpod
class CurrentDevice extends _$CurrentDevice {
  @override
  Device? build() {
    final id = prefs.getString(K.currentDeviceId);
    if (id == fakeDevice.id) {
      return fakeDevice;
    }
    return null;
  }

  // ignore: use_setters_to_change_properties
  Future<void> set(Device? device) async {
    if (device == null) {
      await prefs.remove(K.currentDeviceId);
    } else {
      await prefs.setString(K.currentDeviceId, device.id);
    }
    state = device;
  }
}

@riverpod
Stream<int> rssi(RssiRef ref) =>
    ref.watch(currentDeviceProvider)?.rssiStream ?? const Stream.empty();

@riverpod
Stream<int> battery(BatteryRef ref) =>
    ref.watch(currentDeviceProvider)?.batteryStream ?? const Stream.empty();

@riverpod
Stream<bool> connected(ConnectedRef ref) =>
    ref.watch(currentDeviceProvider)?.connectedStream ?? Stream.value(false);

@riverpod
Stream<EcgData> ecg(EcgRef ref) {
  final device = ref.watch(currentDeviceProvider);
  final connected = ref.watch(connectedProvider).value ?? false;

  if (device == null || !connected) {
    return const Stream.empty();
  }

  return device.ecgStream;
}
