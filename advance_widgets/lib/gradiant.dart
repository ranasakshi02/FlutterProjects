import 'package:flutter/material.dart';

class GradiantScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GradiantState();
  }
}

class GradiantState extends State<GradiantScreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade300,
          title: Text("Gradiant"),
        ),
        body: Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              // color: const Color.fromARGB(255, 209, 189, 244),
              decoration: const BoxDecoration(
                  /**Linear  Gradiant */
                  // gradient: LinearGradient(colors: [
                  //   // Colors.blue,
                  //   // Colors.green,
                  //   // Colors.yellow,
                  //   // Colors.red,
                  //   // Colors.purple,
                  //   Color(0xFFa18cd1),
                  //   Color(0xFFfbc2eb),
                  //   Color(0xFFa18cd1),
                  // ],
                  // begin: FractionalOffset(1.0, 0.0),
                  // end: FractionalOffset(0.0, 1.0),
                  // // stops: [0.3,0.5,0.2],
                  // ),
                  gradient: RadialGradient(colors: [
                Color(0xFFfbc2eb),
                Color(0xFFa18cd1),
              ],
              center: Alignment.bottomCenter)),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome to the Gradiant Screen!",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "This screen uses a custom gradient background.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ))));
  }
}
