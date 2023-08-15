import 'package:dev_muscle/Utils/app_functions.dart';
import 'package:flutter/material.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          customText("your regular physical activity level".toUpperCase(),
              "this help us creat your persnalized plan".toUpperCase()),
          Center(
            child: ListWheelScrollView.useDelegate(
              itemExtent: 70,
              perspective: 0.05,
              diameterRatio: 2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 77,
                  builder: (context, index) {
                    return LevelSelectionProperties();
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
