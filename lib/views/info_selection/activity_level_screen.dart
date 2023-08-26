import 'package:dev_muscle/views/auth_screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

import '../../Utils/app_functions.dart';
import '../../utils/colors.dart';
import '../utils_screens/bottom_button.dart';

class ActivityLevelScreen extends StatefulWidget {
  const ActivityLevelScreen({Key? key}) : super(key: key);

  @override
  State<ActivityLevelScreen> createState() => _ActivityLevelScreenState();
}

class _ActivityLevelScreenState extends State<ActivityLevelScreen> {
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
                    "YOUR REGULAR PHYSICALNACTIVITY LEVEL",
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
              child: SizedBox(
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
                    goto(context, LogInScreen());
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

    List<String> goalList = ["Rookie", "Beginner", "Intermediate", "Advance", "True Beast"];

    for (int x = 0; x < goalList.length; x++) {
      textList.add(Column(
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
      ));
    }
    return textList;
  }
}
