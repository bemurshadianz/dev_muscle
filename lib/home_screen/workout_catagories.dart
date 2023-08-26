import 'package:flutter/material.dart';

class WorkoutCatagories extends StatelessWidget {
  const WorkoutCatagories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        child: Stack(
          children: [
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://fitnessvolt.com/wp-content/uploads/2020/05/david-laid.jpg',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 120,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text("List - $index"),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
