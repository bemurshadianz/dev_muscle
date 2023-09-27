import 'package:dev_muscle/home_screen/bottom_screens/workout_categories.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class WorkoutPlanDetails extends StatelessWidget {
  const WorkoutPlanDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                  "https://www.muscleandfitness.com/wp-content/uploads/2019/03/Physique0.jpg?quality=86&strip=all"),
              Positioned(
                top: 40,
                left: 30,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.lightGrey),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back_ios_sharp,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Day 1 -Warm Up",
                    style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "04 Workouts for Beginner",
                    style: TextStyle(
                      color: AppColors.yellow,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 86,
                        height: 29,
                        decoration: BoxDecoration(
                          color: Color(0xff2C2C2E),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.play_circle,
                              size: 19,
                              color: Colors.white,
                            ),
                            Text(
                              "  60 min",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 86,
                        height: 29,
                        decoration: BoxDecoration(
                          color: Color(0xff2C2C2E),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.local_fire_department_outlined,
                              size: 19,
                              color: Colors.white,
                            ),
                            Text(
                              "  350 Cal",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 20, right: 10, left: 10),
                    child: Text(
                      "Want your body to be healthy."
                      " Join our program with directions according to body’s goals."
                      " Increasing physical strength is the goal of strength training. "
                      "Maintain body fitness by doing physical "
                      "exercise at least 2-3 times a week. ",
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    // height: 96,
                    // width: 327,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Color(0xff2C2C2E),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                            child: Image.network(
                              "https://cimg2.ibsrv.net/cimg/www.fitday.com/693x350_85-1/554/shutterstock_583754929-334554.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Simple Warm-Up",
                                  style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Exercise",
                                  style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
                                ),
                                Expanded(child: SizedBox()),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "0 30",
                              style: TextStyle(color: Colors.yellowAccent, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return WorkoutCategories();
                }));
              },
              child: Container(
                height: 50,
                width: 263,
                // width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffD0FD3E),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Start Workout ",
                        style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
