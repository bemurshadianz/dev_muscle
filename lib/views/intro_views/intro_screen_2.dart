import 'package:dev_muscle/Utils/app_assets.dart';
import 'package:flutter/material.dart';

import '../info_selection/select_gender.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image.asset(
              AppAssets.backgroundSc2,
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.longestSide * .19,
              left: 10,
              right: 10,
              child: Column(
                children: [
                  Text(
                    "Action is the ".toUpperCase(),
                    style: const TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    "key to all success".toUpperCase(),
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return SelectGender();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 35),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Start Now",
                          style: TextStyle(color: Colors.black),
                        ),
                        Icon(Icons.play_arrow),
                      ],
                    ),
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
