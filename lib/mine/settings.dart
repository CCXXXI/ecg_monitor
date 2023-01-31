import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:settings_ui/settings_ui.dart";

import "../utils/constants.dart";
import "model_test.dart";

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Strings.settings)),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text(Strings.devTools),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.compare_arrows),
                title: const Text(Strings.modelTest),
                onPressed: (context) {
                  context.push("/log");
                  modelTest();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
