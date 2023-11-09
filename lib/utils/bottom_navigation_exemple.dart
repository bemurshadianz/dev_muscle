import 'package:dev_muscle/home_screen/about_profile/notification_button.dart';
import 'package:dev_muscle/home_screen/bottom_screens/first_home_screen.dart';
import 'package:dev_muscle/home_screen/bottom_screens/insight.dart';
import 'package:dev_muscle/home_screen/bottom_screens/workout_categories.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State {
  int selectTab = 0;
  final List screens = [
    FirstHomeScreen(),
    WorkoutCategories(),
    NotificationButton(),
    Insight(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectTab],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff1C1C1E),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xff505050),
        currentIndex: selectTab,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_active), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
        onTap: (index) {
          selectTab = index;
          setState(() {});
        },
      ),
    );
  }
}
