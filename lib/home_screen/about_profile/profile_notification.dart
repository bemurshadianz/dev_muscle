import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class ProfileNotification extends StatefulWidget {
  const ProfileNotification({Key? key}) : super(key: key);

  @override
  State<ProfileNotification> createState() => _ProfileNotificationState();
}

class _ProfileNotificationState extends State<ProfileNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 57, left: 25),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.lightGrey),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
                        ),
                      )),
                ),
                SizedBox(
                  width: 45,
                ),
                Text(
                  "Notification",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Color(0xff3A3A3C),
                  height: .5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      "Workout Reminders",
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Icon(
                      Icons.toggle_off_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Color(0xff3A3A3C),
                  height: .5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      "Program Notifications",
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Icon(
                      Icons.toggle_off_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Color(0xff3A3A3C),
                  height: .5,
                ),
              ),
              Text(
                "You can manage your app notification permission in your Phone Settings",
                style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
