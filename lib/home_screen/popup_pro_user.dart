import 'dart:ui';

import 'package:dev_muscle/home_screen/subscription_screen.dart';
import 'package:dev_muscle/utils/colors.dart';
import 'package:flutter/material.dart';

class PopUpProUser extends StatelessWidget {
  const PopUpProUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              "https://i.pinimg.com/474x/14/9a/70/149a70c1f76347ac92f12437be775a0d.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          Center(
              child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.80,
            decoration: BoxDecoration(color: Color(0xff2C2C2E).withAlpha(150), borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://img.wallscloud.net/uploads/thumb/2561441245/_fitness,_blonde,_dumbbell,_sexy,_pose_(1)-1024x576-MM-80.webp")),
                  ),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
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
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Expanded(
                      child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return SubscriptionScreen();
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
                                "Take Appointment",
                                style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
                              ),
                              Icon(Icons.play_arrow),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
                      )),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
