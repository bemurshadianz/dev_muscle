import 'package:dev_muscle/Utils/app_functions.dart';
import 'package:dev_muscle/utils/colors.dart';
import 'package:dev_muscle/views/auth_screens/varification_screen.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 45, left: 25),
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
            ],
          ),
        ),
        customText(
            "FORGOT PASSWORD",
            "ENTER YOUR INFORMATION'S BELOW OR\n"
                "LOGIN WITH A OTHER ACCOUNT"),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    // hintText: 'Email',
                    // hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white),

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white30),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Expanded(child: SizedBox()),
        const Text(
          "Try another way",
          style: TextStyle(color: AppColors.yellow),
        ),
        Expanded(
            child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return VerificationScreen();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.yellow,
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
                        "Send",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Icon(Icons.play_arrow),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )),
      ]),
    );
  }
}
