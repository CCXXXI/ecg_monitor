import "package:flutter/material.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:go_router/go_router.dart";
import "package:url_launcher/url_launcher.dart";

import "../utils/constants/strings.dart" as str;
import "../utils/constants/urls.dart" as urls;

part "me.g.dart";

@swidget
Widget _me(BuildContext context) => ListView(
      children: [
        const ListTile(
          leading: Icon(Icons.person_outlined),
          title: Text("某用户"),
          subtitle: Text("某些信息\n某些信息"),
          isThreeLine: true,
        ),
        ListTile(
          leading: const Icon(Icons.feedback_outlined),
          title: const Text(str.feedback),
          onTap: () async => launchUrl(urls.issues),
        ),
        const ListTile(
          leading: Icon(Icons.help_outlined),
          title: Text("帮助"),
        ),
        ListTile(
          leading: const Icon(Icons.settings_outlined),
          title: const Text(str.settings),
          onTap: () => context.push("/me/settings"),
        ),
        AboutListTile(
          icon: const Icon(Icons.info_outlined),
          applicationVersion: str.version,
          aboutBoxChildren: [
            OutlinedButton(
              onPressed: () async => launchUrl(urls.changelog),
              child: const Text(str.changelog),
            ),
          ],
          child: const Text(str.about),
        ),
      ],
    );
