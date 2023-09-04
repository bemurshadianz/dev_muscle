import 'dart:ui';

import 'package:flutter/material.dart';

class PopUpProUser extends StatelessWidget {
  const PopUpProUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
              "http://i.pinimg.com/videos/thumbnails/originals/69/47/75/694775f1c22962622eeb0e5823a83263.0000000.jpg"),
          BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2,
              ),
              child: ElevatedButton(
                child: Text("show dialog box"),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Stack(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                    "https://t4.ftcdn.net/jpg/02/70/27/57/360_F_270275705_Ja0uASDTp5tCasU2amYLOMvUBT0Qv7m5.jpg",
                                    width: MediaQuery.of(context).size.width,
                                    height: 180,
                                    fit: BoxFit.cover,
                                    AlertDialog(
                                      title: Text("email sent"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("ok"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      });
                },
              )),
        ],
      ),
    );
  }
}
