import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:url_launcher/url_launcher.dart";

import "../utils/constants.dart";

class Mine extends StatelessWidget {
  const Mine({super.key});

  @override
  Widget build(BuildContext context) => ListView(
        children: [
          const ListTile(
            leading: Icon(Icons.person_outlined),
            title: Text("某用户"),
            subtitle: Text("某些信息\n某些信息"),
            isThreeLine: true,
          ),
          ListTile(
            leading: const Icon(Icons.feedback_outlined),
            title: const Text(Strings.feedback),
            onTap: () async => launchUrl(Urls.issues),
          ),
          const ListTile(
            leading: Icon(Icons.help_outlined),
            title: Text("帮助"),
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text(Strings.settings),
            onTap: () => context.push("/mine/settings"),
          ),
          AboutListTile(
            icon: const Icon(Icons.info_outlined),
            applicationVersion: Strings.version,
            aboutBoxChildren: [
              OutlinedButton(
                onPressed: () async => launchUrl(Urls.changelog),
                child: const Text(Strings.changelog),
              ),
            ],
            child: const Text(Strings.about),
          ),
        ],
      );
}
