// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/State%20Managment/Example%203/switch_controller.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  SwitchController controller = Get.put(SwitchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx"),
        centerTitle: true,
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Notification"),
            Obx(() {
              return Switch(
                value: controller.notification.value,
                onChanged: (value) {
                  controller.setNotification(value);
                },
              );
            })
          ],
        )
      ]),
    );
  }
}
