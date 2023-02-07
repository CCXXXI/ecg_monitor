import "package:flutter/material.dart";

class DeviceManagerView extends StatelessWidget {
  const DeviceManagerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 150,
          width: 150,
          color: Colors.greenAccent,
          child: const Center(child: Text("这里放设备图片")),
        ),
        const Text("设备型号", style: TextStyle(fontSize: 20)),
        ListTile(
          leading: const Icon(Icons.bluetooth_disabled),
          title: const Text("蓝牙已断开"),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.battery_unknown),
          title: Text("电量未知"),
        ),
        const ListTile(
          leading: Icon(Icons.not_interested),
          title: Text("解绑设备"),
        ),
      ],
    );
  }
}
