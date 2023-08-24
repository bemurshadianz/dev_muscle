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
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   leading: BackButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      body: Column(
        children: [
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

                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
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
          const Text(
            "Try another way",
            style: TextStyle(color: AppColors.yellow),
          ),
          Expanded(
              child: Container(
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return VarificationScreen();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
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
            ),
          )),
        ],
      ),
    );
  }
}
