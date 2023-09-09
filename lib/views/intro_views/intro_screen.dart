import 'package:flutter/material.dart';

import '../info_selection/select_gender.dart';

class IntroScreen extends StatefulWidget {
  String imageLink;
  String h1;
  String h2;
  bool showNextButton;
  IntroScreen(this.imageLink, this.h1, this.h2, {super.key, this.showNextButton = false});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                widget.imageLink,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.h1.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    widget.h2.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  if (widget.showNextButton)
                    Expanded(
                        child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
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
          ),
        ],
      ),
    );
  }
}
