import 'package:flutter/material.dart';

import '../Utils/app_assets.dart';
import '../utils/colors.dart';

class EditCard extends StatelessWidget {
  const EditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    "EDIT CARD",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(24),
              child: Stack(
                children: [
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset(
                      AppAssets.addnewcard,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 40,
                    child: Text(
                      "HOLDER NAME",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Positioned(
                    bottom: 30,
                    left: 40,
                    child: Text(
                      "0000 0000 0000 0000",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      labelText: "Card Holder Name",
                      // hintText: 'Card Holder Name',
                      labelStyle: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400, color: Colors.white),
                      floatingLabelStyle: TextStyle(color: Colors.yellow),

                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2C2C2E)),
                      ),

                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2C2C2E)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      labelText: 'Card Number',
                      labelStyle: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400, color: Colors.white),
                      floatingLabelStyle: TextStyle(color: Colors.yellow),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2C2C2E)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2C2C2E)),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            labelText: 'Expiry(MM/YY)',
                            labelStyle: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400, color: Colors.white),
                            floatingLabelStyle: TextStyle(color: Colors.yellow),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff2C2C2E)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff2C2C2E)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            labelText: ("CVC"),
                            labelStyle: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400, color: Colors.white),
                            floatingLabelStyle: TextStyle(color: Colors.yellow),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff2C2C2E)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff2C2C2E)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
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
                        "Set as default payment card",
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Center(
            //   child: GestureDetector(
            //     onTap: () {
            //       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
            //         return PaymentComplete();
            //       }));
            //     },
            //     child: Container(
            //       height: 50,
            //       width: 263,
            //       // width: MediaQuery.of(context).size.width,
            //       decoration: BoxDecoration(
            //         color: Color(0xffD0FD3E),
            //         borderRadius: BorderRadius.circular(100),
            //       ),
            //       child: const Padding(
            //         padding: EdgeInsets.symmetric(vertical: 15),
            //         child: Row(
            //           mainAxisSize: MainAxisSize.min,
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Text(
            //               "Done",
            //               style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
