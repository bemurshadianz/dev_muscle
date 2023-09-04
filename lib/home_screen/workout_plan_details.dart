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
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.lightGrey),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
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
        ],
      ),
    );
  }
}
