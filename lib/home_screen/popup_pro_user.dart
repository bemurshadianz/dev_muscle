import 'dart:ui';

import 'package:dev_muscle/utils/colors.dart';
import 'package:flutter/material.dart';

class PopUpProUser extends StatelessWidget {
  const PopUpProUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              "https://i.pinimg.com/474x/14/9a/70/149a70c1f76347ac92f12437be775a0d.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          Center(
              child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.80,
            decoration: BoxDecoration(
                color: AppColors.lightGrey.withAlpha(150),
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://img.wallscloud.net/uploads/thumb/2561441245/_fitness,_blonde,_dumbbell,_sexy,_pose_(1)-1024x576-MM-80.webp")),
                  ),
                  child: Stack(
                    children: [

                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  color: Colors.transparent,
                )),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
