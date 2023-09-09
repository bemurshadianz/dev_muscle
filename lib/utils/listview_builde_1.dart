import 'package:flutter/material.dart';

import 'colors.dart';

class ListviewBuilder1 extends StatelessWidget {
  const ListviewBuilder1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return _buidListItem(index);
          },
        ),
      ),
    );
  }

  Widget _buidListItem(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                SizedBox(
                  //  width: MediaQuery.of(context).size.width,
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
                    "Wake up Call",
                    style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: Text(
                    "| Workouts for Beginner",
                    style: TextStyle(
                      color: AppColors.yellow,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                SizedBox(
                  //  width: MediaQuery.of(context).size.width,
                  height: 230,
                  child: Image.network(
                    "https://www.dmoose.com/cdn/shop/articles/main_image_9b2a4e20-b024-4633-a05b-14c065e22ddd.jpg?v=1671625569",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 20,
                  child: Text(
                    "Full Body Goal Crusher",
                    style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: Text(
                    "| Workouts for Beginner",
                    style: TextStyle(
                      color: AppColors.yellow,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 15,
                  child: Container(
                    height: 22,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red,
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      "PRO",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                SizedBox(
                  //  width: MediaQuery.of(context).size.width,
                  height: 230,
                  child: Image.network(
                    "https://static.wixstatic.com/media/51d5de_60d486d656e74af7991af19bdeff1cfa~mv2.png/v1/fill/w_552,h_366,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/best%20cables_webp.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 20,
                  child: Text(
                    "Lower Body Strength",
                    style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: Text(
                    "| Workouts for Beginner",
                    style: TextStyle(
                      color: AppColors.yellow,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 15,
                  child: Container(
                    height: 22,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red,
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      "PRO",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                SizedBox(
                  //  width: MediaQuery.of(context).size.width,
                  height: 230,
                  child: Image.network(
                    "https://www.muscleandfitness.com/wp-content/uploads/2014/11/Big-lean-workout-mehmet-promo.jpg?quality=86&strip=all",
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
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                SizedBox(
                  //  width: MediaQuery.of(context).size.width,
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
                    "Upgrade to Premium",
                    style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: Text(
                    "Subscribe to take an appointment",
                    style: TextStyle(
                      color: AppColors.yellow,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
