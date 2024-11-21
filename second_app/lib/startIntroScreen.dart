import 'package:flutter/material.dart';
import 'package:second_app/main.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text("Intro Screen"),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello"),
            SizedBox(
              height: 10,
              width: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyHomePage(title: "Home Screen");
                  }));
                },
                child: Text("Click Here"))
          ],
        ))));
  }
}
