import 'package:get/get.dart';

class FavouriteControler extends GetxController {
  RxList<String> furiteList = [
    'Apple',
    'Orange',
    ',Mango',
    'Bannana',
  ].obs;
  RxList<dynamic> tempFav = [].obs;
  addFav(String value) {
    tempFav.add(value);
  }

  removeFav(String value) {
    tempFav.remove(value);
  }
}
