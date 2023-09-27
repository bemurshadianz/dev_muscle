import 'package:flutter/material.dart';

import '../utils/colors.dart';

class PaymentComplete extends StatelessWidget {
  const PaymentComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 205,
              width: 311,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xff2C2C2E),
              ),
              Column(
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
              Text(
                "5 years experience",
                style: TextStyle(color: AppColors.yellow, fontSize: 11, fontWeight: FontWeight.w400),
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
            ),
          ),
        ],
      ),
    );
  }
}
