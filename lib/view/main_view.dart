import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_grid/controller/random_controller.dart';
import 'package:random_grid/view/result_view.dart';

/// Displays a list of TimerItems.
class MainView extends StatelessWidget {
  const MainView({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.isLandscape ? 10 : 5,
      ),
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        var number = index + 2;
        var blue = Random().nextInt(155) + 100;
        var color = Color.fromARGB(
          255,
          255,
          255,
          blue,
        );

        return GetBuilder<RandomController>(
          builder: (controller) {
            return GestureDetector(
              onTap: () {
                controller.max.value = number;
                controller.blue.value = blue;
                Navigator.restorablePushNamed(context, ResultView.routeName);
              },
              child: Card(
                color: color,
                child: Center(
                  child: Text(
                    '$number',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
