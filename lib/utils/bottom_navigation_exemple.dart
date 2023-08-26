import 'package:flutter/material.dart';

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() => _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 0;

  final List _pages = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Insight"),
    ),
    Center(
      child: Text("Notification"),
    ),
    Center(
      child: Text("Profile"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedTab),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black12,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
        onTap: (int index) {
          _selectedTab = index;
          setState(() {});
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Insight"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_active), label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin_rounded), label: "Profile"),
        ],
      ),
    );
  }
}
