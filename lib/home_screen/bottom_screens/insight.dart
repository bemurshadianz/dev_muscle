import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Insight extends StatelessWidget {
  const Insight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(top: 57, left: 25),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: [
      //           GestureDetector(
      //             onTap: () {
      //               Navigator.pop(context);
      //             },
      //             child: Container(
      //                 decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.lightGrey),
      //                 child: const Padding(
      //                   padding: EdgeInsets.all(6.0),
      //                   child: Icon(
      //                     Icons.arrow_back_sharp,
      //                     color: Colors.white,
      //                   ),
      //                 )),
      //           ),
      //           SizedBox(
      //             width: 45,
      //           ),
      //           Text(
      //             "September 2023",
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontWeight: FontWeight.w700,
      //               fontSize: 20,
      //             ),
      //           ),
      //           SizedBox(
      //             width: 45,
      //           ),
      //           GestureDetector(
      //             onTap: () {
      //               Navigator.pop(context);
      //             },
      //             child: Container(
      //                 decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.lightGrey),
      //                 child: const Padding(
      //                   padding: EdgeInsets.all(6.0),
      //                   child: Icon(
      //                     Icons.navigate_next_outlined,
      //                     color: Colors.white,
      //                   ),
      //                 )),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
      appBar: CalendarAppBar(
        onDateChanged: (value) => print(value),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now(),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.7,
              center: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "652",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 36, color: Colors.white),
                  ),
                  Text(
                    "cal",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Column(
                  //   children: [
                  //     Text(
                  //       "Active Calories",
                  //       style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.white),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
              // footer: Text(
              //   "Sales this week",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              // ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Color(0xffD0FD3E),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularPercentIndicator(
                    radius: 50.0,
                    lineWidth: 4.0,
                    percent: 0.70,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Steps",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "6540",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    progressColor: Color(0xffD0FD3E),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  CircularPercentIndicator(
                    radius: 50.0,
                    lineWidth: 4.0,
                    percent: 0.45,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Time",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "45",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "  min",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    progressColor: Color(0xffFF2424),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  CircularPercentIndicator(
                    radius: 50,
                    lineWidth: 4.0,
                    percent: 0.60,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Heart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "72",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "  bpm",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    progressColor: Color(0xffE79332),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                ],
              ),
            ),
          ],
        ),

        // Container(
        //   height: 74,
        //   width: 311,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(16),
        //     color: Color(0xff2C2C2E),
        //   ),
        //   child: ListTile(
        //     leading: Icon(Icons.radio_button_checked),
        //     trailing: Container(
        //       height: 24,
        //       width: 24,
        //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(7), color: Colors.yellow),
        //       child: Icon(
        //         Icons.done,
        //       ),
        //     ),
        //     title: Text(
        //       "Stability Training ",
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         color: Colors.white,
        //         subtitle: Text(
        //           "10:00",
        //           style: TextStyle(color: AppColors.yellow, fontSize: 11, fontWeight: FontWeight.w400),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
