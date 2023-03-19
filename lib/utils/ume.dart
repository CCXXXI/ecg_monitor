import "package:flutter/foundation.dart";
import "package:flutter_ume/flutter_ume.dart";
import "package:flutter_ume_kit_clean_local_data/clean_local_data.dart";
import "package:flutter_ume_kit_console/flutter_ume_kit_console.dart";
import "package:flutter_ume_kit_designer_check/flutter_ume_kit_designer_check.dart";
import "package:flutter_ume_kit_device/flutter_ume_kit_device.dart";
import "package:flutter_ume_kit_dio/flutter_ume_kit_dio.dart";
import "package:flutter_ume_kit_perf/flutter_ume_kit_perf.dart";
import "package:flutter_ume_kit_shared_preferences/flutter_ume_kit_shared_preferences.dart";
import "package:flutter_ume_kit_show_code/flutter_ume_kit_show_code.dart";
import "package:flutter_ume_kit_slow_animation/flutter_ume_kit_slow_animation.dart";
import "package:flutter_ume_kit_ui/flutter_ume_kit_ui.dart";

import "../database.dart";
import "constants/strings.dart";
import "dio.dart";

/// Plugins that are always available.
final _pluginsAlwaysOn = <Pluggable>[
  AlignRuler(),
  const ColorPicker(),
  const ColorSucker(),
  Console(),
  CpuInfoPage(),
  const DataCleanPanel(),
  const DesignerCheck(),
  const DeviceInfoPanel(),
  DioInspector(dio: dio),
  Performance(),
  SharedPreferencesInspector(),
  const SlowAnimation(),
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
  final showDevTools = prefs.getBool(K.showDevTools) ?? false;
  if (!showDevTools) {
    return;
  }

  PluginManager.instance.registerAll([
    ..._pluginsAlwaysOn,
    if (kDebugMode) ..._pluginsDebugOnly,
  ]);
}
