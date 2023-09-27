import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class NotificationButton extends StatefulWidget {
  const NotificationButton({Key? key}) : super(key: key);

  @override
  State<NotificationButton> createState() => _NotificationButtonState();
}

class _NotificationButtonState extends State<NotificationButton> {
  @override
  String notifications = "New";
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 57, left: 25),
            child: Text(
              "Notifications",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
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
                        notifications = "New";
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: notifications == "New" ? AppColors.yellow : null,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            "New",
                            style: TextStyle(
                                color: notifications == "New" ? Colors.black : Colors.white,
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
                        notifications = "Events";
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: notifications == "Events" ? AppColors.yellow : null,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            "Events",
                            style: TextStyle(
                                color: notifications == "Events" ? Colors.black : Colors.white,
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
                        notifications = "All";
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: notifications == "All" ? AppColors.yellow : null,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            "All",
                            style: TextStyle(
                                color: notifications == "All" ? Colors.black : Colors.white,
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
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Color(0xff3A3A3C),
                  height: .5,
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Congratulations",
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Text(
                      "2:40 AM",
                      style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: const [
                    Text(
                      "35% your daily challenge completed",
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
                    )
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
                  height: 10,
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Attentions",
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Text(
                      "2:40 AM",
                      style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: const [
                    Text(
                      "Your subscription is going to expire\n very soon. Subscribe now.",
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 14,
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
                      "Daily Activity",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "08:25 AM",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Time for your workout session ",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
