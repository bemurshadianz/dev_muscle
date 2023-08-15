import 'package:dev_muscle/Utils/app_assets.dart';
import 'package:flutter/material.dart';

import 'intro_screen.dart';

class IntroPageView extends StatefulWidget {
  const IntroPageView({Key? key}) : super(key: key);

  @override
  State<IntroPageView> createState() => _IntroPageViewState();
}

class _IntroPageViewState extends State<IntroPageView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              IntroScreen(
                AppAssets.introBg_0,
                "meet your coach",
                "start your journey",
              ),
              IntroScreen(
                AppAssets.backgroundSc1,
                "create a workout plan",
                "to stay fit",
              ),
              IntroScreen(
                AppAssets.backgroundSc2,
                "action is the",
                "key to all success",
                showNextButton: true,
              ),
              // IntroScreen2(),
            ],
            onPageChanged: (int index) {
              this.index = index;
              setState(() {});
            },
          ),
          Align(
            alignment: const Alignment(0, 1),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow),
                        borderRadius: BorderRadius.circular(100),
                        color: index == 0 ? Colors.yellow : null),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 5,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow),
                        borderRadius: BorderRadius.circular(100),
                        color: index == 1 ? Colors.yellow : null),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 5,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow),
                        borderRadius: BorderRadius.circular(100),
                        color: index == 2 ? Colors.yellow : null),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
