import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";
import "package:url_launcher/url_launcher.dart";

import "../generated/l10n.dart";
import "../utils/constants/strings.dart";
import "../utils/constants/urls.dart" as urls;

part "me.g.dart";

@swidget
Widget _me(BuildContext context) {
  final s = S.of(context);

  return ListView(
    children: [
      const ListTile(
        leading: Icon(Icons.person_outlined),
        title: Text("某用户"),
        subtitle: Text("某些信息\n某些信息"),
        isThreeLine: true,
      ),
      ListTile(
        leading: const Icon(Icons.feedback_outlined),
        title: Text(s.feedback),
        onTap: () async => launchUrl(urls.issues),
      ),
      const ListTile(
        leading: Icon(Icons.help_outlined),
        title: Text("帮助"),
      ),
      ListTile(
        leading: const Icon(Icons.settings_outlined),
        title: Text(s.settings),
        onTap: () => context.push("/me/settings"),
      ),
      AboutListTile(
        icon: const Icon(Icons.info_outlined),
        applicationVersion: appVersion,
        aboutBoxChildren: [
          OutlinedButton(
            onPressed: () async => launchUrl(urls.changelog),
            child: Text(s.changelog),
          ),
        ],
        child: Text(s.about),
      ),
    ],
  );
}
