import "package:flutter_ume/core/plugin_manager.dart";
import "package:flutter_ume_kit_console/console/console_panel.dart";
import "package:flutter_ume_kit_device/components/cpu_info/cpu_info_page.dart";
import "package:flutter_ume_kit_device/components/device_info/device_info_panel.dart";
import "package:flutter_ume_kit_perf/components/memory_info/memory_info_page.dart";
import "package:flutter_ume_kit_perf/components/performance/performance.dart";
import "package:flutter_ume_kit_show_code/flutter_ume_kit_show_code.dart";
import "package:flutter_ume_kit_ui/components/align_ruler/align_ruler.dart";
import "package:flutter_ume_kit_ui/components/color_picker/color_picker.dart";
import "package:flutter_ume_kit_ui/components/color_sucker/color_sucker.dart";
import "package:flutter_ume_kit_ui/components/touch_indicator/touch_indicator.dart";
import "package:flutter_ume_kit_ui/components/widget_detail_inspector/widget_detail_inspector.dart";
import "package:flutter_ume_kit_ui/components/widget_info_inspector/widget_info_inspector.dart";

void initUme() {
  PluginManager.instance.registerAll([
    AlignRuler(),
    const ColorPicker(),
    const ColorSucker(),
    Console(),
    CpuInfoPage(),
    const DeviceInfoPanel(),
    const MemoryInfoPage(),
    Performance(),
    const ShowCode(),
    const TouchIndicator(),
    const WidgetDetailInspector(),
    const WidgetInfoInspector(),
  ]);
}
