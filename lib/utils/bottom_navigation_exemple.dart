import 'package:dev_muscle/home_screen/first_home_screen.dart';
import 'package:flutter/material.dart';

import '../views/auth_screens/forgotpassword.dart';
import '../views/auth_screens/varification_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State {
  int selectTab = 0;
  final List screens = [
    FirstHomeScreen(),
    ForgotPassword(),
    VerificationScreen(),
    Container(color: Colors.blue),
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
