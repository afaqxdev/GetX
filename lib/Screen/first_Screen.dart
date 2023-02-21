// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var name;

  FirstScreen({this.name, super.key});
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Wellcome" '${Get.arguments[0]}' '${Get.arguments[1]}'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              // Get.to(const SecondScreen());
              Get.toNamed('2nd');
            },
            child: const Text("Go to next Screen")),
      ),
    );
  }
}
