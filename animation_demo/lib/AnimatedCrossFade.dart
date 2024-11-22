import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatedCrossFadeState();
  }
}

class AnimatedCrossFadeState extends State<AnimatedCrossFadeScreen> {
  var _width = 200.0;
  var _height = 200.0;
  Decoration myDecor = BoxDecoration(
      borderRadius: BorderRadius.circular(2), color: Colors.deepPurple);

  var isFirst = true;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(Duration(seconds: 4), () {
  //     reload();
  //   });
  // }

  void reload() {
    setState(() {
      isFirst = !isFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          "Animated Cross Fade",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                firstChild: Container(
                  width: _width,
                  height: _height,
                  decoration: myDecor,
                ),
                secondChild: Image.asset(
                  'assets/images/alejandro.jpg',
                  width: _width,
                  height: _height,
                ),
                // sizeCurve: Curves.bounceIn,
                crossFadeState: isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 3)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                 reload();
                });
              },
              child: Text("Animate"),
            )
          ],
        ),
      ),
    ));
  }
}
