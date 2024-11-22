import 'package:flutter/material.dart';

class ClipRrectScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ClipRrectScreenState();
  }
}

class ClipRrectScreenState extends State<ClipRrectScreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text("Clip RRect"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ClipRRect(
              // borderRadius: BorderRadius.all(Radius.elliptical(20, 50)),
              // borderRadius: BorderRadius.circular(20.0)
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                  topRight: Radius.circular(4),
                  bottomLeft: Radius.circular(4)),
              child: Image.asset(
                'assets/images/boris.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              )
              // child: Container(
              //   width: 200,
              //   height: 200,
              //   color: Colors.deepPurple,
              // )
              ),
        )));
  }
}
