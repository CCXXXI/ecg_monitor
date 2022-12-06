import "package:flutter/material.dart";

class MineView extends StatelessWidget {
  const MineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ListTile(
          leading: Icon(Icons.person),
          title: Text("某用户"),
          subtitle: Text("某些信息\n某些信息"),
        ),
        ListTile(
          leading: Icon(Icons.feedback),
          title: Text("反馈"),
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text("帮助"),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("设置"),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text("关于"),
        ),
      ],
    );
  }
}
