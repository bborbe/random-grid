// ignore_for_file: prefer_final_fields

import 'dart:math';

import 'package:get/get.dart';

class RandomController extends GetxController {
  RxInt max = 1.obs;
  RxInt blue = 1.obs;

  int random() {
    return Random().nextInt(max.value) + 1;
  }
}
