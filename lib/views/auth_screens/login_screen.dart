import 'package:dev_muscle/Utils/app_assets.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Image(image: AssetImage(AppAssets.loginpic)),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Login"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Sign up"),
                  ),
                  CircleAvatar(),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.download_done_outlined),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: const Icon(Icons.visibility),
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
                      Image(image: AssetImage(AppAssets.applepic)),
                      Image(image: AssetImage(AppAssets.googlepic)),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
