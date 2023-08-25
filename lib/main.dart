import 'package:dev_muscle/utils/bottom_navigation_exemple.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: const App(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BottomNavigationExample();
  }
}
