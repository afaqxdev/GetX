import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/State%20Managment/Example%206/sign_In.dart';

import 'State Managment/Example 5/image_Picker.dart';
import 'Utilities/language/localization.dart';

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
        return const SignIn();
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
