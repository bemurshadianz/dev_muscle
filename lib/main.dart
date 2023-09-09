import 'package:dev_muscle/home_screen/appointment.dart';
import 'package:flutter/material.dart';

void main() {
  final listOne = [];

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
    return Appointment();
  }
}
