import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../utils/constants.dart";

class MineView extends StatelessWidget {
  const MineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ListTile(
          leading: Icon(Icons.person),
          title: Text("某用户"),
          subtitle: Text("某些信息\n某些信息"),
        ),
        const ListTile(
          leading: Icon(Icons.feedback),
          title: Text("反馈"),
        ),
        const ListTile(
          leading: Icon(Icons.help),
          title: Text("帮助"),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text(Strings.settings),
          onTap: () => context.push("/mine/settings"),
        ),
        const ListTile(
          leading: Icon(Icons.info),
          title: Text("关于"),
        ),
      ],
    );
  }
}
