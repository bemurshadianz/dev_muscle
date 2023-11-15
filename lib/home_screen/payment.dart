import 'package:dev_muscle/home_screen/add_new_card.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final listLinks = [
    "https://prod-ne-cdn-media.puregym.com/media/819394/gym-workout-plan-for-gaining-muscle_header.jpg?quality=50",
    "https://fitnessvolt.com/wp-content/uploads/2020/05/david-laid.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 57, left: 25),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.lightGrey),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
                        ),
                      )),
                ),
                SizedBox(
                  width: 80,
                ),
                Text(
                  "PAYMENT ",
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
            height: 30,
          ),
          Text(
            "PAYMENT METHOD",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          Container(
            height: 110,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                  ),
                  child: Container(
                    height: 115,
                    width: 62,
                    decoration: BoxDecoration(
                      color: Color(0xff2C2C2E),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: listLinks.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(listLinks[index]))),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order Details",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  color: Color(0xff3A3A3C),
                  height: .5,
                ),
                SizedBox(
                  height: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Richard will",
                          style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 14,
                          width: 32,
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
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "High Intensity Training",
                          style: TextStyle(color: AppColors.yellow, fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  color: Color(0xff3A3A3C),
                  height: .5,
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Date",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "14 September 2023 - Thursday",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Time",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "11:40 AM",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  color: Color(0xff3A3A3C),
                  height: .5,
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: const [
                    Text(
                      "Estimated Cost",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      "\$ 175.99",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  color: Color(0xff3A3A3C),
                  height: .5,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Expanded(
                child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return AddNewCard();
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
                          "Confirm",
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
