import "package:flutter/material.dart";

import "../constants.dart";

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Strings.settings)),
      body: const Placeholder(),
    );
  }
}
