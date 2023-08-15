import 'package:flutter/material.dart';

goto(context, nextScreen) {
  MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (BuildContext context) {
    return nextScreen;
  });
  Navigator.push(context, materialPageRoute);
}

Widget customText(String titleOne, String titleTwo) {
  return Column(
    children: [
      const SizedBox(
        height: 40,
      ),
      Center(
        child: Text(
          titleOne,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        titleTwo,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}
