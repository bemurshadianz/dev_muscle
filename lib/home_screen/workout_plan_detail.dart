import 'package:flutter/material.dart';

class WorkoutPlanDetail extends StatelessWidget {
  const WorkoutPlanDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        Expanded(
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                    "https://uk.gymshark.com/cdn/shop/files/GY77468_C66-018_INTL_Web_Banner_Category_Image_1880x1460px_Shop_Mens_1900x.jpg?v=1674733420"),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
