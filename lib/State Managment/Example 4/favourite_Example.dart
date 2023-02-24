import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx/State%20Managment/Example%204/favourite_Controller.dart';

class FavouriteExample extends StatefulWidget {
  const FavouriteExample({super.key});

  @override
  State<FavouriteExample> createState() => _FavouriteExampleState();
}

class _FavouriteExampleState extends State<FavouriteExample> {
  FavouriteControler controler = Get.put(FavouriteControler());
  @override
  Widget build(BuildContext context) {
    print("Getx Zindabad");
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controler.furiteList.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                  onTap: () {
                    if (controler.tempFav
                        .contains(controler.furiteList[index].toString())) {
                      controler
                          .removeFav(controler.furiteList[index].toString());
                    } else {
                      controler.addFav(controler.furiteList[index].toString());
                    }
                  },
                  title: Text(controler.furiteList[index].toString()),
                  trailing: Obx(() {
                    return controler.tempFav
                            .contains(controler.furiteList[index].toString())
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(Icons.favorite_border);
                  })));
        },
      ),
    );
  }
}
