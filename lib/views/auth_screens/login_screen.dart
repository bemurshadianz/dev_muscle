import 'package:dev_muscle/Utils/app_assets.dart';
import 'package:dev_muscle/Utils/app_functions.dart';
import 'package:dev_muscle/views/utils_screens/bottom_button.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  int buttonValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: Stack(
                children: [
                  if (buttonValue == 0)
                    SizedBox(
                      child: Image.asset(
                        AppAssets.backgroundSc1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  if (buttonValue == 1)
                    SizedBox(
                      child: Image.asset(AppAssets.backgroundSc2),
                      //AppAssets.backgroundSc1==buttonValue=0 ? AppAssets.backgroundSc2:butttonValue=2,
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                    child: Row(
                      children: [
                        /// Login Button
                        GestureDetector(
                          onTap: () {
                            buttonValue = 0;
                            setState(() {});
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(height: 5),
                              if (buttonValue == 0)
                                Container(
                                  height: 5,
                                  width: 35,
                                  color: Colors.yellowAccent,
                                )
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),

                        /// Sign up Button

                        GestureDetector(
                          onTap: () {
                            buttonValue = 1;
                            setState(() {});
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                "Sign up",
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(height: 5),
                              if (buttonValue == 1)
                                Container(
                                  height: 5,
                                  width: 35,
                                  color: Colors.yellowAccent,
                                )
                            ],
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        Padding(padding: EdgeInsets.only(right: 20)),

                        if (buttonValue == 0)
                          CircleAvatar(
                            child: Image(
                              image: AssetImage(AppAssets.applepic),
                            ),
                          )
                      ],
                    ),
                  ),
                  if (buttonValue == 0)
                    const Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Center(
                        child: Text(
                          "Welcome back,Sarah",
                          style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  if (buttonValue == 1)
                    const Positioned(
                      bottom: 100,
                      left: 10,
                      right: 10,
                      child: Center(
                        child: Text(
                          'HELLO ROOKIES,',
                          style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),

                  // if (buttonValue == 1)
                  // const Positioned(
                  //   bottom: 5,
                  //   left: 5,
                  //   right: 5,
                  //   child: Center(
                  //     child:  Text(
                  //       'ENTER YOUR INFORMATION BELOW OR\nLOGIN WITH OTHER ACCOUNT',
                  //       style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),
                  //     ),
                  //   ),
                  // ),
                ],
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              // color: Colors.teal,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
            ),
            height: MediaQuery.of(context).size.height * .5,

            //text from fields//////

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      suffixIcon: Icon(
                        Icons.download_done_outlined,
                        color: AppColors.yellow,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: AppColors.yellow,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                if (buttonValue == 1)
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white30),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white30),
                        ),
                        hintText: 'Password again',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: AppColors.yellow,
                        ),
                      ),
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (buttonValue == 0)
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password",
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     Container(
                    //       decoration: const BoxDecoration(shape: BoxShape.circle),
                    //       child: InkWell(
                    //         onTap: () {
                    //           const Icon(
                    //             Icons.apple_sharp,
                    //             color: AppColors.lightGrey,
                    //           );
                    //         },
                    //       ),
                    //     ),
                    //     // Container(
                    //     //   decoration: const BoxDecoration(shape: BoxShape.circle),
                    //     //   child: InkWell(
                    //     //     onTap: () {
                    //     //       const Icon(
                    //     //         Icons.g_mobiledata,
                    //     //         color: AppColors.lightGrey,
                    //     //       );
                    //     //     },
                    //     //   ),
                    //     // ),
                    //     // Expanded(child: Container()),
                    //     // BottomButton(
                    //     //   title: ('Login'),
                    //     //   onTap: () {
                    //     //     goto(context, SignupScreen());
                    //     //   },
                    //     // ),
                    //   ],
                    // ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade900,
                        child: IconButton(
                          icon: Icon(
                            Icons.apple_sharp,
                          ),
                          onPressed: () {},
                          iconSize: 25,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade900,
                        child: IconButton(
                          icon: Icon(
                            Icons.g_mobiledata,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                          iconSize: 25,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      BottomButton(
                        title: (buttonValue == 0 ? "Login" : "Signup"),
                        onTap: () {
                          goto(context, LogInScreen());
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
