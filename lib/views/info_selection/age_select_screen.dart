import 'package:dev_muscle/Utils/app_functions.dart';
import 'package:dev_muscle/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class AgeSelect extends StatefulWidget {
  const AgeSelect({Key? key}) : super(key: key);

  @override
  State<AgeSelect> createState() => _AgeSelectState();
}

class _AgeSelectState extends State<AgeSelect> {
  @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            customText("How old are you ?".toUpperCase(), "this help us to create your personalized plan".toUpperCase()),
            Expanded(
              child: Center(
                  child: WheelChooser.integer(
                onValueChanged: (index) {},
                maxValue: 70,
                minValue: 1,
                initValue: 18,
                itemSize: 80,
                selectTextStyle: TextStyle(color: AppColors.yellow, fontSize: 45, fontWeight: FontWeight.bold),
                unSelectTextStyle: TextStyle(color: Colors.grey, fontSize: 12),
              )),
            )
          ],
        ),
      ),
    );
  }
}
