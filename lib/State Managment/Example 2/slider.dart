import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx/State%20Managment/Example%202/slider_Controller.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  SliderController controller = Get.put(SliderController());
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("Slider");
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
        centerTitle: true,
      ),
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        Obx(() {
          return Container(
            height: 200,
            width: 150,
            color: Colors.red.withOpacity(controller.opacity.value),
          );
        }),
        Obx(() => Slider(
              value: controller.opacity.value,
              onChanged: (value) {
                controller.sliderFuctuon(value);
              },
            ))
      ]),
    );
  }
}
