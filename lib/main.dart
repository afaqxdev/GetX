import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Screen/first_Screen.dart';
import 'package:getx/Screen/language/language.dart';
import 'package:getx/Screen/language/localization.dart';
import 'package:getx/Screen/second_Screen.dart';
import 'package:getx/Screen/utility_of%20Getx.dart';

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
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(builder: (context) {
        return HomeScreen();
      }),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(
            name: '/1',
            page: () => FirstScreen(
                  name: '',
                )),
        GetPage(name: '/2nd', page: () => const SecondScreen()),
        GetPage(name: '/3rd', page: () => const localization()),
      ],
    );
  }
}
