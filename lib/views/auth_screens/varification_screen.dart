import 'package:flutter/material.dart';

import '../../Utils/app_functions.dart';
import '../../utils/colors.dart';

class VarificationScreen extends StatelessWidget {
  const VarificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            splashRadius: 100,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Column(
        children: [
          customText(
              "VERIFICATION",
              "CHECK YOUR EMAIL.WE'VE SENT YOU\n"
                  "THE PIN AT YOUR EMAIL"),
          const Text(
            "Did you receive any code",
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
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 100),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Verify",
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
        ],
      ),
    );
  }
}
