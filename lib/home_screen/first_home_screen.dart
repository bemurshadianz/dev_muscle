import 'package:flutter/material.dart';

class FirstHomeScreen extends StatefulWidget {
  const FirstHomeScreen({Key? key}) : super(key: key);

  @override
  State<FirstHomeScreen> createState() => _FirstHomeScreenState();
}

class _FirstHomeScreenState extends State<FirstHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 100,
              left: 15,
            ),
            child: Text(
              "HELLO SARAH,",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Good morning",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 20,
                ),
                child: Text(
                  "Today Workout Plan",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 30),
                child: Text(
                  "Fri 25 Aug",
                  // textDirection: TextDecoration.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.yellow, fontSize: 12),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Image(
                image: NetworkImage(
                    "https://e1.pxfuel.com/desktop-wallpaper/493/540/desktop-wallpaper-fitness-gym-girls.jpg"),
              ),
              Positioned(
                bottom: 50,
                left: 20,
                child: Text(
                  "Day 1 -Warm Up",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Text(
                  "| 07:00 - 08:00 AM",
                  style: TextStyle(color: Colors.yellow, fontSize: 12),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Workout Categories",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 10),
                child: Text(
                  "See All",
                  style: TextStyle(color: Colors.yellow, fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
