import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class SignInController extends GetxController {
  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;
  void signIN() async {
    try {
      final response =
          await post(Uri.parse('https://reqres.in/api/login'), body: {
        "email": emailcontroller.value.text,
        "password": passwordcontroller.value.text,
      });
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Get.snackbar('SuccessFully', 'Login Successfully');
      } else {
        Get.snackbar('Exception', 'Failed');
      }
    } catch (e) {
      Get.snackbar('Exception', '$e');
    }
  }
}
