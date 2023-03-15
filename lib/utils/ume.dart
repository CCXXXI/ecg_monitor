import "package:flutter/foundation.dart";
import "package:flutter_ume/flutter_ume.dart";
import "package:flutter_ume_kit_console/flutter_ume_kit_console.dart";
import "package:flutter_ume_kit_device/flutter_ume_kit_device.dart";
import "package:flutter_ume_kit_dio/flutter_ume_kit_dio.dart";
import "package:flutter_ume_kit_perf/flutter_ume_kit_perf.dart";
import "package:flutter_ume_kit_show_code/flutter_ume_kit_show_code.dart";
import "package:flutter_ume_kit_ui/flutter_ume_kit_ui.dart"; // UI 插件包

import "../database.dart";
import "constants/keys.dart" as key;
import "dio.dart";

/// Plugins that are always available.
final _pluginsAlwaysOn = <Pluggable>[
  AlignRuler(),
  const ColorPicker(),
  const ColorSucker(),
  Console(),
  CpuInfoPage(),
  const DeviceInfoPanel(),
  DioInspector(dio: dio),
  Performance(),
];

/// Plugins that are only available in debug mode.
final _pluginsDebugOnly = <Pluggable>[
  const MemoryInfoPage(),
  const ShowCode(),
  const TouchIndicator(),
  const WidgetDetailInspector(),
  const WidgetInfoInspector(),
];

void initUme() {
  final showDevTools = prefs.getBool(key.showDevTools) ?? false;
  if (!showDevTools) {
    return;
  }

  PluginManager.instance.registerAll([
    ..._pluginsAlwaysOn,
    if (kDebugMode) ..._pluginsDebugOnly,
  ]);
}
