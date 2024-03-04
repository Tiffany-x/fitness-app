import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

var names = [
  "Tiffany Wekesa",
  "Joan Wangusi",
  "Trixxie Grace",
  "Bob Wekesa",
];

class Students extends StatelessWidget {
  const Students({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(children: [
          Image.network(
            "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=600",
            height: 80,
            width: 80,
          ),
          Column(children: [
            Text(names[index]),
            Text("324718946238"),
            Text("jeremy@gmail.com"),
          ])
        ]);
      },
      //itemCount: 10,
    );
  }
}
