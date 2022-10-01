import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_grid/controller/random_controller.dart';
import 'package:random_grid/view/result_view.dart';
import 'package:random_grid/view/main_view.dart';

void main() {
  runApp(const RandomGrid());
}

class RandomGrid extends StatelessWidget {
  const RandomGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RandomController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainView(),
      getPages: [
        GetPage(
          name: MainView.routeName,
          page: () => const MainView(),
        ),
        GetPage(
          name: ResultView.routeName,
          page: () => const ResultView(),
        ),
      ],
    );
  }
}
