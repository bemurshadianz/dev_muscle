import 'package:flutter/material.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

import '../../Utils/app_functions.dart';
import '../../utils/colors.dart';
import '../utils_screens/bottom_button.dart';
import 'activity_level_screen.dart';

class GoalSelectScreen extends StatefulWidget {
  GoalSelectScreen({Key? key}) : super(key: key);

  @override
  State<GoalSelectScreen> createState() => _SelectGoalState();
}

class _SelectGoalState extends State<GoalSelectScreen> {
  int selectedIndex = 2;

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
                    "WHAT'S YOUR GOAL ",
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
                  startPosition: 2,
                  onValueChanged: (selectedIndex) {
                    this.selectedIndex = selectedIndex;
                    setState(() {});
                  },
                  children: getList(context),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GoBackButton(onTap: () {
                  Navigator.pop(context);
                }),
                Expanded(child: Container()),
                BottomButton(
                  title: ('Next'),
                  onTap: () {
                    goto(context, ActivityLevelScreen());
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

    List<String> goalList = ["Gain Weight", "Lose Weight", "Get fitter", "Gain more flexible", "Learn the Basic"];

    for (int x = 0; x < goalList.length; x++) {
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
                    goalList[x],
                    style: TextStyle(
                        color: selectedIndex == x ? Colors.white : AppColors.lightGrey,
                        fontSize: 18,
                        fontWeight: selectedIndex == x ? FontWeight.bold : FontWeight.normal),
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
