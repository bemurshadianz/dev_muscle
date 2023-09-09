import 'package:flutter/material.dart';

import '../utils/colors.dart';

class FitnessInstructor extends StatelessWidget {
  const FitnessInstructor({Key? key}) : super(key: key);

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
                  "FITNESS TRAINERS",
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
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 96,
                      width: 327,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color(0xff2C2C2E),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "High Intensity Training",
                                    style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w400),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "5 years experience",
                                style: TextStyle(color: Colors.yellowAccent, fontSize: 11, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
