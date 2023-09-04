import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/listview_builde_1.dart';

class WorkoutCategories extends StatefulWidget {
  const WorkoutCategories({Key? key}) : super(key: key);

  @override
  State<WorkoutCategories> createState() => _WorkoutCategoriesState();
}

class _WorkoutCategoriesState extends State<WorkoutCategories> {
  String workOutCategory = "Advance";

  final listLinks = [
    "https://prod-ne-cdn-media.puregym.com/media/819394/gym-workout-plan-for-gaining-muscle_header.jpg?quality=50",
    "https://fitnessvolt.com/wp-content/uploads/2020/05/david-laid.jpg",
    "https://rare-gallery.com/4534958-men-fitness-model.html",
    "https://img.freepik.com/premium-photo/strong-handsome-young-man-fitness-model-with-sporty-naked-body-muscles-does-training-workout-gym_338491-13500.jpg?w=2000",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Container(
              height: 25,
              child: Text(
                "Workout Categories",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        workOutCategory = "Beginner";
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: workOutCategory == "Beginner" ? AppColors.yellow : null,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            "Beginner",
                            style: TextStyle(
                                color: workOutCategory == "Beginner" ? Colors.black : Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        workOutCategory = "Intermediate";
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: workOutCategory == "Intermediate" ? AppColors.yellow : null,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            "Intermediate",
                            style: TextStyle(
                                color: workOutCategory == "Intermediate" ? Colors.black : Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        workOutCategory = "Advance";
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: workOutCategory == "Advance" ? AppColors.yellow : null,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            "Advance",
                            style: TextStyle(
                                color: workOutCategory == "Advance" ? Colors.black : Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListviewBuilder1(),
        ],
      ),
    );
  }
}
