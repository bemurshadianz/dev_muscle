import 'package:flutter/material.dart';

import 'colors.dart';

class NetworkAssests extends StatelessWidget {
  const NetworkAssests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 230,
          child: Image.network(
            "https://prod-ne-cdn-media.puregym.com/media/819394/gym-workout-plan-for-gaining-muscle_header.jpg?quality=50",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 50,
          left: 20,
          child: Text(
            "Day 1 -Warm Up",
            style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 20,
          child: Text(
            "| 07:00 - 08:00 AM",
            style: TextStyle(
              color: AppColors.yellow,
            ),
          ),
        )
      ],
    );
  }
}
