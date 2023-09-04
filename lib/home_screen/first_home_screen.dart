import 'package:dev_muscle/utils/colors.dart';
import 'package:flutter/material.dart';

class FirstHomeScreen extends StatefulWidget {
  const FirstHomeScreen({Key? key}) : super(key: key);

  @override
  State<FirstHomeScreen> createState() => _FirstHomeScreenState();
}

class _FirstHomeScreenState extends State<FirstHomeScreen> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                "HELLO SARAH,",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Good morning",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Today Workout Plan",
                    style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Fri 25 Aug",
                    // textDirection: TextDecoration.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: AppColors.yellow),
                  )
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://prod-ne-cdn-media.puregym.com/media/819394/gym-workout-plan-for-gaining-muscle_header.jpg?quality=50"))),
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
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Workout Categories",
                      style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600)),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: AppColors.yellow,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
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
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                    itemCount: listLinks.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.80,
                              height: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(listLinks[index]))),
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
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 32,
              ),
              Text("New Workouts", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600)),
              SizedBox(
                height: 14,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.35,
                child: ListView.builder(
                    itemCount: listLinks.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: MediaQuery.of(context).size.width * 0.35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(listLinks[index]))),
                            ),
                            Align(
                              alignment: Alignment(0, 0.7),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Text(
                                      "Day 1 -Warm Up",
                                      style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "| 07:00 - 08:00 AM",
                                      style: TextStyle(
                                        color: AppColors.yellow,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
