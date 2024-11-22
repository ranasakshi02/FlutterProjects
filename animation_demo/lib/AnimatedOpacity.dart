import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatedOpacityState();
  }
}

class AnimatedOpacityState extends State<AnimatedOpacityScreen> {
  var _width = 200.0;
  var _height = 200.0;
  var _opacity = 1.0;
  bool flag = true;
  Decoration myDecor = BoxDecoration(
      borderRadius: BorderRadius.circular(2), color: Colors.deepPurple);
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          "Animated Opacity",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: Container(
                width: _width,
                height: _height,
                decoration: myDecor,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    _opacity = 0.0;
                    myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue);
                    flag = false;
                  } else {
                    _opacity = 1;
                    myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.deepPurple);
                    flag = true;
                  }
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
