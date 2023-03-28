import "dart:convert";
import "dart:io";

import "package:file_picker/file_picker.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:logging/logging.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../device_manager/fake_device.dart";
import "../../generated/l10n.dart";
import "../../utils/database.dart";
import "../../utils/debug/logger.dart";
import "../../utils/dio.dart";
import "../../utils/strings.dart";
import "../../utils/urls.dart";
import "providers.dart";
import "restart_snack_bar.dart";

part "dev_tools.g.dart";

@riverpod
class _LoggerLevel extends _$LoggerLevel {
  @override
  Level build() {
    final index = prefs.getInt(K.loggerLevelIndex) ?? infoLevelIndex;
    return loggerLevels[index];
  }

  Future<void> set(Level level) async {
    state = level;
    Logger.root.level = level;

    final index = loggerLevels.indexOf(level);
    await prefs.setInt(K.loggerLevelIndex, index);
  }

  Future<void> setIndex(int index) => set(loggerLevels[index]);
}

final _loadingFakeSamplePointsProvider = StateProvider((ref) => false);

@cwidget
Widget _devTools(BuildContext context, WidgetRef ref) {
  final s = S.of(context);

  final loggerLevel = ref.watch(_loggerLevelProvider);
  final loggerLevelIndex = loggerLevels.indexOf(loggerLevel);

  final loadingFakeSamplePoints = ref.watch(_loadingFakeSamplePointsProvider);

  return Column(
    children: [
      SwitchListTile.adaptive(
        secondary: const Icon(Icons.device_hub_outlined),
        title: Text(s.fakeDevice),
        value: ref.watch(fakeDeviceOnProvider),
        onChanged: ref.read(fakeDeviceOnProvider.notifier).set,
      ),
      ListTile(
        leading: const Icon(Icons.javascript_outlined),
        title: Text(s.loadFakeSamplePoints),
        trailing:
            loadingFakeSamplePoints ? const CircularProgressIndicator() : null,
        enabled: !loadingFakeSamplePoints,
        onTap: () async {
          ref.read(_loadingFakeSamplePointsProvider.notifier).state = true;
          await _loadFakeSamplePoints();
          ref.read(_loadingFakeSamplePointsProvider.notifier).state = false;

          if (context.mounted) {
            showRestartSnackBar(context);
          }
        },
      ),
      ListTile(
        leading: const Icon(Icons.text_snippet_outlined),
        title: Text(s.loggerLevel),
        subtitle: Text(loggerLevel.name),
        trailing: SizedBox(
          width: 200,
          child: Slider.adaptive(
            value: loggerLevelIndex.toDouble(),
            onChanged: (value) async =>
                ref.read(_loggerLevelProvider.notifier).setIndex(value.toInt()),
            max: loggerLevels.length - 1,
            divisions: loggerLevels.length - 1,
            label: loggerLevel.name,
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.network_check_outlined),
        title: Text(s.networkTest),
        onTap: () async => dio.getUri<dynamic>(testUrl),
      )
    ],
  );
}

Future<void> _loadFakeSamplePoints() async {
  // Pick a file.
  final picked = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ["json"],
  );
  if (picked == null) {
    return;
  }

  // Convert to data.
  final file = File(picked.files.single.path!);
  final str = await file.readAsString();
  final json = jsonDecode(str) as List;
  final data = json.map(
    (e) => FakeEcgData.fromJson(e as Map<String, dynamic>),
  );

  // Write to database.
  await writeFakeEcgData(data);
}
