import 'package:flutter/material.dart';

class ListWheelScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListWheelState();
  }
}

class ListWheelState extends State<ListWheelScreen> {
  var arrindex = [
    Colors.deepPurple.shade100,
    Colors.deepPurple.shade200,
    Colors.deepPurple.shade300,
    Colors.deepPurple.shade400,
    Colors.deepPurple.shade500,
    Colors.deepPurple.shade600,
    Colors.deepPurple.shade700,
    Colors.deepPurple.shade800,
    Colors.deepPurple.shade900,
  ];
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("List wheel"),
      ),
      body: 
      Padding(padding: EdgeInsets.all(10),
      child:ListWheelScrollView(
        itemExtent: 200,
        children: arrindex
            .map((toElement) => Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: toElement,
                  ),
                ))
            .toList(),
      )),
    ));
  }
}
