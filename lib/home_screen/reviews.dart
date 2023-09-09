import 'package:dev_muscle/home_screen/writing_review.dart';
import 'package:flutter/material.dart';
import 'package:rating_summary/rating_summary.dart';

import '../utils/colors.dart';

class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  String reviews = "Recent";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 57, left: 25),
            child: Row(
              children: [
                InkWell(
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
                SizedBox(
                  width: 45,
                ),
                Text(
                  "REVIEWS",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
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
                        reviews = "Recent";
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: reviews == "Recent" ? AppColors.yellow : null,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            "Recent",
                            style: TextStyle(
                                color: reviews == "Recent" ? Colors.black : Colors.white, fontWeight: FontWeight.w500),
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
                        reviews = "";
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: reviews == "Critical" ? AppColors.yellow : null,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            "Critical",
                            style: TextStyle(
                                color: reviews == "Critical" ? Colors.black : Colors.white,
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
                        reviews = "Favourable";
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: reviews == "Favourable" ? AppColors.yellow : null,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            "Favourable",
                            style: TextStyle(
                                color: reviews == "Favourable" ? Colors.black : Colors.white,
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
          SizedBox(
            height: 20,
          ),
          RatingSummary(
            counter: 13,
            average: 3.846,
            showAverage: true,
            counterFiveStars: 5,
            counterFourStars: 4,
            counterThreeStars: 2,
            counterTwoStars: 1,
            counterOneStars: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2C2C2E),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: 16, left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  "https://files.oyebesmartest.com/uploads/large/11593502795osu.jpeg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Jennifer James",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 13,
                              width: 27,
                              decoration: BoxDecoration(
                                color: Colors.yellowAccent,
                              ),
                              child: Center(
                                child: Text(
                                  "4.8",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              "2d ago",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Text(
                      //   "Had such an amazing session with Maria. She instantly picked up on the level of my fitness "
                      //       "and adjusted the workout to suit me whilst also"
                      //       " pushing me to my limits.",
                      //   style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 13),
                      // ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Expanded(
                child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return WritingReview();
                  }));
                },
                child: Container(
                  height: 50,
                  width: 247,
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
                          "Write a Review",
                          style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
