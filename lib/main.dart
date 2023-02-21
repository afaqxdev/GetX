import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Screen/second_Screen.dart';

import 'Screen/first_Screen.dart';
import 'Screen/responsive-UI.dart';
import 'Screen/utility_of Getx.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/2nd', page: () => const SecondScreen()),
        GetPage(name: '/3rd', page: () => const Responsive())
      ],
    );
  }
}
