import 'package:dev_muscle/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class SelectHeight extends StatefulWidget {
  SelectHeight({Key? key}) : super(key: key);

  @override
  State<SelectHeight> createState() => _SelectHeightState();
}

class _SelectHeightState extends State<SelectHeight> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            const SizedBox(height: 60),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "WHAT'S YOUR HEIGHT ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "in Centimeters",
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              child: WheelChooser.custom(
                itemSize: 80,
                onValueChanged: (a) {
                  print(a);
                  this.selectedIndex = a;
                  setState(() {});
                },
                children: getList(context),
              ),
            ))
          ],
        ),
      ),
    );
  }

  List<Widget> getList(context) {
    List<Widget> textList = [];
      var column = Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: selectedIndex == 0 ? 2 : 0,
            width: MediaQuery.of(context).size.width / 2,
            color: AppColors.yellow,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "165 cm",
              style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            height: selectedIndex == 0 ? 2 : 0,
            width: MediaQuery.of(context).size.width / 2,
            color: AppColors.yellow,
          ),
        ],
      );

      for(int x= 0; x<200;x++ ){
        textList.add(column);
      }





    return textList;
  }
}



void fun(){
  int x = 90;

  if (x % 2 == 0) {
    print("even");
  } else {
    print("odd");
  }
}
