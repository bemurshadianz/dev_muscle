import 'package:flutter/material.dart';

import '../../Utils/app_functions.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          customText("what's your goal".toUpperCase(), "this help us creat your persnalized plan".toUpperCase()),
          Center(
              // child: ListWheelScrollView.useDelegate(
              //   itemExtent: 70,
              //   perspective: 0.05,
              //   diameterRatio: 2,
              //   physics: FixedExtentScrollPhysics(),
              //   childDelegate: ListWheelChildBuilderDelegate(
              //       childCount: 77,
              //       builder: (context, index) {
              //         return GoalProperties();
              //       }),
              // ),
              ),
        ],
      ),
    );
  }
}
