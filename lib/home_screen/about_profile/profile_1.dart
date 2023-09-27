import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class Profile1 extends StatelessWidget {
  const Profile1({Key? key}) : super(key: key);

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
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
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
                ),
              ),
              Container(
                color: Color(0xff3A3A3C),
                width: .5,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "joined",
                      style: TextStyle(
                        color: Color(
                          0xff505050,
                        ),
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "2 month ago",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            "SARAH\nWAGAN".toUpperCase(),
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            color: Color(0xff3A3A3C),
            height: .5,
          ),
          Row(
            children: [
              Text(
                "Edit Profile",
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Expanded(
                child: SizedBox(),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            color: Color(0xff3A3A3C),
            height: .5,
          ),
          Row(
            children: const [
              Text(
                "Privacy Policy",
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ],
          ),
          Container(
            color: Color(0xff3A3A3C),
            height: .5,
          ),
          Row(
            children: [
              Text(
                "Settings",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Color(0xff3A3A3C),
            height: .5,
          ),
          Container(
            height: 74,
            width: 311,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xff2C2C2E),
            ),
            child: Column(
              children: [
                Container(
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
                Row(
                  children: [
                    Text(
                      "Upgrade to Premium",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  "This subscription is auto-renewable",
                  style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xff3A3A3C),
            height: .5,
          ),
          Text(
            "Sign Out",
            style: TextStyle(color: Color(0xffFF2424), fontSize: 17, fontWeight: FontWeight.w600),
          ),
          Container(
            color: Color(0xff3A3A3C),
            height: .5,
          ),
        ],
      ),
    );
  }
}
