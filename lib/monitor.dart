import "package:flutter/material.dart";

class MonitorView extends StatelessWidget {
  const MonitorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("88", style: TextStyle(fontSize: 88)),
            Text("次/分", style: TextStyle(fontSize: 44)),
          ],
        ),
        Image.asset("assets/images/ECG placeholder.png"),
      ],
    );
  }
}
