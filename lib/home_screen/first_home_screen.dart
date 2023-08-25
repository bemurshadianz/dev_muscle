import 'package:flutter/material.dart';

class FirstHomeScreen extends StatefulWidget {
  const FirstHomeScreen({Key? key}) : super(key: key);

  @override
  State<FirstHomeScreen> createState() => _FirstHomeScreenState();
}

class _FirstHomeScreenState extends State<FirstHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100, left: 25),
            child: Text(
              "HELLO SARAH,",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          const Text(
            "Good morning",
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, left: 20),
                child: Text(
                  "Today Workout Plan",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              Expanded(child: SizedBox()),
              Text(
                "Fri 25 Aug",
                style: TextStyle(color: Colors.white, fontSize: 12),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.network(
                  "https://w0.peakpx.com/wallpaper/656/174/HD-wallpaper-fitnes-gym-fitness-girl-model.jpg",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
