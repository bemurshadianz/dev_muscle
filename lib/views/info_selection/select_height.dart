import 'package:flutter/material.dart';

class SelectHeight extends StatelessWidget {
  const SelectHeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "WHAT'S YOUR HEIGHT",
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              "In CM's?",
              style: TextStyle(color: Colors.yellowAccent, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 11,
            ),
          ],
        ),
      ),
    );
  }
}
