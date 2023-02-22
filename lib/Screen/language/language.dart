// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class localization extends StatefulWidget {
  const localization({super.key});

  @override
  State<localization> createState() => _localizationState();
}

class _localizationState extends State<localization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text("message".tr),
            subtitle: Text("name".tr),
          ),
          SizedBox(
            height: Get.height * .1,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'Us'));
                  },
                  child: const Text("Enlish")),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('ur', 'pk'));
                  },
                  child: const Text("Urdu")),
            ],
          ),
        ],
      ),
    );
  }
}
