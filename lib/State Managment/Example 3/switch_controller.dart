import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool notification = false.obs;
  setNotification(bool value) {
    notification.value = value;
  }
}
