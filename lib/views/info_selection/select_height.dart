import 'package:dev_muscle/utils/colors.dart';
import 'package:dev_muscle/views/info_selection/goal_select_screen.dart';
import 'package:flutter/material.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

import '../../Utils/app_functions.dart';
import '../utils_screens/bottom_button.dart';

class SelectHeight extends StatefulWidget {
  SelectHeight({Key? key}) : super(key: key);

  @override
  State<SelectHeight> createState() => _SelectHeightState();
}

class _SelectHeightState extends State<SelectHeight> {
  int selectedIndex = 165;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            const SizedBox(height: 60),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "WHAT'S YOUR HEIGHT ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "This helps us create your personalized plan",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: WheelChooser.custom(
                  itemSize: 80,
                  startPosition: 165,
                  onValueChanged: (selectedIndex) {
                    this.selectedIndex = selectedIndex;
                    setState(() {});
                  },
                  children: getList(context),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GoBackButton(onTap: () {
                  Navigator.pop(context);
                }),
                Expanded(child: Container()),
                BottomButton(
                  title: ('Next'),
                  onTap: () {
                    goto(context, GoalSelectScreen());
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  List<Widget> getList(BuildContext context) {
    List<Widget> textList = [];
    for (int x = 0; x <= 250; x++) {
      textList.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: selectedIndex == x ? 2 : 0,
              width: MediaQuery.of(context).size.width / 2,
              color: AppColors.yellow,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "$x ",
                    style: TextStyle(
                        color: selectedIndex == x ? Colors.white : AppColors.lightGrey,
                        fontSize: 35,
                        fontWeight: FontWeight.w900),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      "cm",
                      style: TextStyle(color: selectedIndex == x ? Colors.white : AppColors.lightGrey),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: selectedIndex == x ? 2 : 0,
              width: MediaQuery.of(context).size.width / 2,
              color: AppColors.yellow,
            ),
          ],
        ),
      );
    }
    return textList;
  }
}
