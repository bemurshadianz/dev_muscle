import 'package:dev_muscle/Utils/app_assets.dart';
import 'package:dev_muscle/utils/colors.dart';
import 'package:dev_muscle/views/auth_screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../../Utils/app_functions.dart';
import '../utils_screens/bottom_button.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Expanded(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  AppAssets.loginpic,
                  fit: BoxFit.fill,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        goto(context, LogInScreen());
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      onPressed: () {
                        goto(context, SignupScreen());
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                    CircleAvatar(),
                    const Text(
                      'WELCOME BACK,\n SARAH',
                      style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        suffixIcon: Icon(
                          Icons.download_done_outlined,
                          color: AppColors.lightGrey,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: AppColors.lightGrey,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: const BoxDecoration(shape: BoxShape.circle),
                            child: InkWell(
                              onTap: () {
                                const Icon(
                                  Icons.apple_sharp,
                                  color: AppColors.lightGrey,
                                );
                              },
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(shape: BoxShape.circle),
                            child: InkWell(
                              onTap: () {
                                const Icon(
                                  Icons.g_mobiledata,
                                  color: AppColors.lightGrey,
                                );
                              },
                            ),
                          ),

                          // Image(image: AssetImage(AppAssets.applepic)),
                          // Image(image: AssetImage(AppAssets.googlepic)),
                          Expanded(child: Container()),
                          BottomButton(
                            title: ('Login'),
                            onTap: () {
                              goto(context, SignupScreen());
                            },
                          ),
                        ],
                      ),
                      //    SizedBox(
                      //  height: 20,
                      //  ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
