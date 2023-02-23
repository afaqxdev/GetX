import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx/State%20Managment/Example%201/counter_controller.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("build again");
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
        centerTitle: true,
      ),
      body: Center(child: Obx(() {
        return Text(
          controller.counter.toString(),
          style: const TextStyle(fontSize: 20),
        );
      })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
        child: const Text('+'),
      ),
    );
  }
}
