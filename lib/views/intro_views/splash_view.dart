import 'package:dev_muscle/Utils/app_assets.dart';
import 'package:flutter/material.dart';

import 'intro_page_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void navigateToIntroPage() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
        return const IntroPageView();
      }));
    });
  }

  @override
  void initState() {
    navigateToIntroPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppAssets.maskGroup, scale: 3.0),
            Text(
              "DEV",
              style: TextStyle(color: Colors.yellow.shade400, fontSize: 44, fontWeight: FontWeight.w900),
            ),
            Text(
              "Muscles",
              style: TextStyle(color: Colors.yellow.shade400, fontSize: 33, fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
