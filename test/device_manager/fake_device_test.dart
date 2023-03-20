import "package:ecg_monitor/device_manager/fake_device.dart";
import "package:ecg_monitor/utils/database.dart";
import "package:ecg_monitor/utils/debug_data.dart";
import "package:ecg_monitor/utils/strings.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:shared_preferences/shared_preferences.dart";

void main() {
  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({K.fakeDeviceOn: true});
    await initPrefs();
    await initDebugData();
  });

  group("basic info", () {
    test("id", () => expect(fakeDevice.id, isNotEmpty));
    test("name", () => expect(fakeDevice.name, isNotEmpty));
    test("model", () => expect(fakeDevice.model, isNotEmpty));
  });

  group("streams", () {
    test(
      "connected",
      () => expect(fakeDevice.connectedStream, emits(isTrue)),
    );
    test("rssi", () => expect(fakeDevice.rssiStream, emits(anything)));
    test("battery", () => expect(fakeDevice.batteryStream, emits(anything)));
    test("ecg", () => expect(fakeDevice.ecgStream, emits(anything)));
  });
}
