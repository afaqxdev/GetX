import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx/State%20Managment/Example%205/image_Controller.dart';

class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({super.key});

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  ImagePickerController pickerController = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(() => Center(
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 50,
                        backgroundImage: pickerController.imgPath.isNotEmpty
                            ? FileImage(
                                File(pickerController.imgPath.toString()))
                            : null),
                    TextButton(
                        onPressed: () {
                          pickerController.getImage();
                        },
                        child: const Text("Pick Image"))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
