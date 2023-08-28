import 'package:dev_muscle/utils/colors.dart';
import 'package:flutter/material.dart';

class FirstHomeScreen extends StatefulWidget {
  const FirstHomeScreen({Key? key}) : super(key: key);

  @override
  State<FirstHomeScreen> createState() => _FirstHomeScreenState();
}

class _FirstHomeScreenState extends State<FirstHomeScreen> {
  String workOutCategory = "Advance";
  final List_links = [
    "https://prod-ne-cdn-media.puregym.com/media/819394/gym-workout-plan-for-gaining-muscle_header.jpg?quality=50",
    "https://prod-ne-cdn-media.puregym.com/media/819394/gym-workout-plan-for-gaining-muscle_header.jpg?quality=50",
    "https://prod-ne-cdn-media.puregym.com/media/819394/gym-workout-plan-for-gaining-muscle_header.jpg?quality=50",

    // "https://fitnessvolt.com/wp-content/uploads/2020/05/david-laid.jpg",
    // "https://rare-gallery.com/4534958-men-fitness-model.html",
    // "https://img.freepik.com/premium-photo/strong-handsome-young-man-fitness-model-with-sporty-naked-body-muscles-does-training-workout-gym_338491-13500.jpg?w=2000",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 45,
              left: 15,
            ),
            child: Text(
              "HELLO SARAH,",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Good morning",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 5),
            child: Row(
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
          ),
          Stack(
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
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
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
          Row(
            children: [
              ListView.builder(
                itemCount: List_links.length,
                itemBuilder: (context, index) {
                  return Image.network(List_links[index]);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
