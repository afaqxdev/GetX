import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx/State%20Managment/Example%206/sign_Controller.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  SignInController controller = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx"),
        centerTitle: true,
      ),

      // ignore: prefer_const_literals_to_create_immutables
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: controller.emailcontroller.value,
            decoration: const InputDecoration(hintText: "Email"),
          ),
          TextField(
            controller: controller.passwordcontroller.value,
            decoration: const InputDecoration(hintText: "Password"),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              controller.signIN();
            },
            color: Colors.amber,
            child: const Text("SignUP"),
          )
        ]),
      ),
    );
  }
}
