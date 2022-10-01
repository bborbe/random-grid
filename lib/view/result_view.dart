import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_grid/controller/random_controller.dart';
import 'package:random_grid/view/main_view.dart';

/// Displays detailed information about a TimerItem.
class ResultView extends StatelessWidget {
  const ResultView({
    Key? key,
  }) : super(key: key);

  static const String routeName = '/result_view';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.restorablePushNamed(context, MainView.routeName);
      },
      child: GetBuilder<RandomController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: Color.fromARGB(
              255,
              255,
              255,
              controller.blue.value,
            ),
            body: Center(
              child: Text(
                "Result: ${controller.random()}",
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        },
      ),
    );
  }
}
