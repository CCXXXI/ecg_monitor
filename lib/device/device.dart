import "package:flutter_reactive_ble/flutter_reactive_ble.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../utils/database.dart";
import "../utils/strings.dart";
import "bluetooth.dart";
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

  Stream<DeviceConnectionState> get stateStream;

  Stream<int> get batteryStream;

  Stream<EcgData> get ecgStream;
}

@riverpod
class CurrentDevice extends _$CurrentDevice {
  @override
  Device? build() {
    final id = prefs.getString(K.currentDeviceId);
    if (id == null) {
      return null;
    }
    if (id == fakeDevice.id) {
      return fakeDevice;
    }
    return HA301B(id: id, name: prefs.getString(K.currentDeviceName)!);
  }

  // ignore: use_setters_to_change_properties
  Future<void> set(Device? device) async {
    if (device == null) {
      await prefs.remove(K.currentDeviceId);
    } else {
      await prefs.setString(K.currentDeviceId, device.id);
      await prefs.setString(K.currentDeviceName, device.name);
    }
    state = device;
  }
}

@riverpod
Stream<int> battery(BatteryRef ref) =>
    ref.watch(currentDeviceProvider)?.batteryStream ?? const Stream.empty();

@riverpod
Stream<DeviceConnectionState> connectionState(ConnectionStateRef ref) =>
    ref.watch(currentDeviceProvider)?.stateStream ??
    Stream.value(DeviceConnectionState.disconnected);

@riverpod
Stream<EcgData> ecg(EcgRef ref) =>
    ref.watch(currentDeviceProvider)?.ecgStream ?? const Stream.empty();
