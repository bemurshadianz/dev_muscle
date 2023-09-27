import 'package:dev_muscle/Utils/app_assets.dart';
import 'package:dev_muscle/views/auth_screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../Utils/app_functions.dart';
import '../../utils/colors.dart';
import '../utils_screens/bottom_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(AppAssets.signupscreen),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      goto(context, LogInScreen());
                    },
                    child: Text("Login"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      goto(context, SignupScreen());
                    },
                    child: Text("Sign up"),
                  ),
                  CircleAvatar(),
                  const Text(
                    'HELLO ROKIES,',
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const Text(
                    'ENTER YOUR INFORMATION BELOW OR\nLOGIN WITH OTHER ACCOUNT',
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Card Holder Name',
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
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password again',
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: AppColors.lightGrey,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  const Align(
                    alignment: Alignment.bottomRight,
                  ),
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
                        child: GestureDetector(
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
                        child: GestureDetector(
                          onTap: () {
                            const Icon(
                              Icons.g_mobiledata,
                              color: AppColors.lightGrey,
                            );
                          },
                        ),
                      ),
                      Expanded(child: Container()),
                      BottomButton(
                        title: ('Login'),
                        onTap: () {
                          goto(context, SignupScreen());
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
