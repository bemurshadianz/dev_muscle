import 'package:flutter/material.dart';

class PaymentComplete extends StatelessWidget {
  const PaymentComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 223, right: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(7), color: Colors.yellow),
                  child: Icon(
                    Icons.done,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Payment Completed!",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 50),
                child: Text(
                  "You’ve book a new appointment \nwith your trainer",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 205,
            width: 311,
            decoration: BoxDecoration(
              color: Color(0xff2C2C2E),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Trainer",
                    style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff2C2C2E),
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(200),
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
                        "Richard will",
                        style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 16,
                        width: 33,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 56),
                    child: Text(
                      "High Intensity Training",
                      style: TextStyle(color: Colors.yellow, fontSize: 11, fontWeight: FontWeight.w400),
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
                  Row(
                    children: const [
                      Text(
                        "Time",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16,
                    ),
                    child: Row(
                      children: const [
                        Text(
                          "11:40 AM",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ],
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
