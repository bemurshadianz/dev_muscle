import 'package:dev_muscle/home_screen/reviews.dart';
import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';

import '../utils/colors.dart';

class TrainerDetail extends StatelessWidget {
  TrainerDetail({Key? key}) : super(key: key);

  List<Widget> widgets = [
    Image.network(
      "https://as1.ftcdn.net/v2/jpg/05/69/08/66/1000_F_569086634_Gyy7aGtha1rnhmok1xc1e35pwC6j08Vl.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://as1.ftcdn.net/v2/jpg/05/69/08/66/1000_F_569086634_Gyy7aGtha1rnhmok1xc1e35pwC6j08Vl.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://as1.ftcdn.net/v2/jpg/05/69/08/66/1000_F_569086634_Gyy7aGtha1rnhmok1xc1e35pwC6j08Vl.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://as1.ftcdn.net/v2/jpg/05/69/08/66/1000_F_569086634_Gyy7aGtha1rnhmok1xc1e35pwC6j08Vl.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://as1.ftcdn.net/v2/jpg/05/69/08/66/1000_F_569086634_Gyy7aGtha1rnhmok1xc1e35pwC6j08Vl.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://as1.ftcdn.net/v2/jpg/05/69/08/66/1000_F_569086634_Gyy7aGtha1rnhmok1xc1e35pwC6j08Vl.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://as1.ftcdn.net/v2/jpg/05/69/08/66/1000_F_569086634_Gyy7aGtha1rnhmok1xc1e35pwC6j08Vl.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://as1.ftcdn.net/v2/jpg/05/69/08/66/1000_F_569086634_Gyy7aGtha1rnhmok1xc1e35pwC6j08Vl.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://as1.ftcdn.net/v2/jpg/05/69/08/66/1000_F_569086634_Gyy7aGtha1rnhmok1xc1e35pwC6j08Vl.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://as1.ftcdn.net/v2/jpg/05/69/08/66/1000_F_569086634_Gyy7aGtha1rnhmok1xc1e35pwC6j08Vl.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://as1.ftcdn.net/v2/jpg/05/69/08/66/1000_F_569086634_Gyy7aGtha1rnhmok1xc1e35pwC6j08Vl.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://as1.ftcdn.net/v2/jpg/05/69/08/66/1000_F_569086634_Gyy7aGtha1rnhmok1xc1e35pwC6j08Vl.jpg",
      fit: BoxFit.cover,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network("https://generationiron.com/wp-content/uploads/2021/06/1-11.jpg"),
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
          Padding(
            padding: EdgeInsets.only(top: 25, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jennifer James",
                  style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Functional Strength",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.yellow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xff2C2C2E),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: const [
                                Text(
                                  "6",
                                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Experience",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                            Container(
                              height: 56,
                              width: 1,
                              color: Colors.grey.shade900,
                            ),
                            Expanded(
                                child: Column(
                              children: const [
                                Text(
                                  "46",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Completed",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                            Container(
                              height: 56,
                              width: 1,
                              color: Colors.grey.shade900,
                            ),
                            Expanded(
                                child: Column(
                              children: const [
                                Text(
                                  "25",
                                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Active Clients",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, left: 24),
            child: Row(
              children: const [
                Text(
                  "Reviews",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          Container(
            height: 13,
            width: 27,
            decoration: BoxDecoration(
              color: Colors.yellowAccent,
            ),
            child: Text(
              "4.8",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, left: 24),
            child: Row(
              children: [
                ImageStack.widgets(
                  children: widgets,
                  widgetRadius: 45,
                  widgetCount: 3,
                  widgetBorderWidth: 1,
                  totalCount: 4,
                  backgroundColor: AppColors.yellow,
                  widgetBorderColor: Colors.grey,
                ),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    "Read all reviews",
                    style: TextStyle(color: AppColors.yellow, fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 180,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
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
                    return Reviews();
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
                          "Book an Appointment ",
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
