import 'package:flutter/material.dart';

class Listview_Builder_Listtile extends StatelessWidget {
  const Listview_Builder_Listtile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return _buidListItem(index);
          },
        ),
      ),
    );
  }

  Widget _buidListItem(int index) {
    return ListView(
      children: const <Widget>[
        ListTile(
          leading: Image(
            image: NetworkImage(
                'https://recxpress.com.au/wp-content/uploads/2019/05/WARM-UP-EXERCISES-YOU-CAN-DO-BEFORE-HITTING-YOUR-WORKOUT-1.jpg'),
          ),
          title: Text('Simple Warm _Up'),
          subtitle: Text("Exercises"),
          isThreeLine: true,
          trailing: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
        ),
        ListTile(
          leading: Image(
            image: NetworkImage(
                'https://iascfitness.org/wp-content/uploads/2022/07/Screen-Shot-2022-07-04-at-9.51.46-AM.png'),
          ),
          title: Text('Stability Training'),
          subtitle: Text("Basics"),
          isThreeLine: true,
          trailing: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
