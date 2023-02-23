import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/State%20Managment/Example%201/counter_Example.dart';
import 'package:getx/State%20Managment/Example%203/switch_Example.dart';
import 'package:getx/Utilities/first_Screen.dart';
import 'package:getx/Utilities/language/language.dart';
import 'package:getx/Utilities/language/localization.dart';
import 'package:getx/Utilities/second_Screen.dart';
import 'package:getx/Utilities/utility_of%20Getx.dart';

import 'State Managment/Example 2/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      // this were you will give your local, like if its hindi, urdu, spanish
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(builder: (context) {
        return const SwitchExample();
      }),
      // getPages: [
      //   GetPage(name: '/', page: () => const HomeScreen()),
      //   GetPage(
      //       name: '/1',
      //       page: () => FirstScreen(
      //             name: '',
      //           )),
      //   GetPage(name: '/2nd', page: () => const SecondScreen()),
      //   GetPage(name: '/3rd', page: () => const localization()),
      // ],
    );
  }
}
