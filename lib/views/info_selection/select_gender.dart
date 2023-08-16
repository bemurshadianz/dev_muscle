import 'package:dev_muscle/views/info_selection/age_select_screen.dart';
import 'package:flutter/material.dart';

import '../../Utils/app_functions.dart';
import '../../utils/colors.dart';
import '../utils_screens/bottom_button.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key});

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  String gender = "male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 25,
            ),
            customText("tell us about yourself".toUpperCase(), ""),
            Expanded(child: Container()),
            InkWell(
              onTap: () {
                gender = "male";
                setState(() {});
              },
              child: CircleAvatar(
                backgroundColor: gender == "male" ? AppColors.yellow : AppColors.lightGrey,
                radius: 70,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.male,
                        color: gender == "male" ? Colors.black : Colors.white,
                        size: 45,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(
                          color: gender == "male" ? Colors.black : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                gender = "female";
                setState(() {});
              },
              child: CircleAvatar(
                backgroundColor: gender == "female" ? AppColors.yellow : AppColors.lightGrey,
                radius: 70,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.female,
                        color: gender == "female" ? Colors.black : Colors.white,
                        size: 45,
                      ),
                      Text(
                        "Female",
                        style: TextStyle(
                          color: gender == "female" ? Colors.black : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BottomButton(
                  title: ('Next'),
                  onTap: () {
                    goto(context, AgeSelect());
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
}
