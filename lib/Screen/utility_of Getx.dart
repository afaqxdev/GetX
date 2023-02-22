// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
      ),
      body: Column(children: [
        Card(
          child: ListTile(
            title: const Text("GetX Dialog Alert"),
            subtitle: const Text("GetX dailog alert  "),
            onTap: () {
              Get.defaultDialog(
                  title: "Alert Dialoge",
                  titlePadding: const EdgeInsets.only(top: 20),
                  confirm: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text("Ok"),
                  ),
                  content: const Text("Learning Getx"),
                  cancel: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("cancel")));
            },
          ),
        ),
        Card(
          child: ListTile(
            title: const Text("GetX Bottom Sheet"),
            subtitle: const Text("GetX Bottom Sheet"),
            onTap: () {
              Get.bottomSheet(Container(
                color: Colors.purple.shade200,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text("Light Them"),
                      leading: const Icon(
                        Icons.light_mode,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        Get.changeTheme(ThemeData.light());
                      },
                    ),
                    ListTile(
                      title: const Text("Dark Them"),
                      leading: const Icon(
                        Icons.dark_mode,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                      },
                    ),
                  ],
                ),
              ));
            },
          ),
        ),
        TextButton(
            onPressed: () {
              Get.toNamed('/1', arguments: ['afaq', 'zahir']);
            },
            child: const Text("Got Next page"))
      ]),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.snackbar("Afaq Zahir", "Flutter Developer",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.blue);
        },
      ),
    );
  }
}
