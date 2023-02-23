import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderController extends GetxController {
  RxDouble opacity = .4.obs;

  sliderFuctuon(double value) {
    opacity.value = value;
  }
}
