import 'package:flutter/material.dart';

class Fooanimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FooanimationState();
  }
}

class FooanimationState extends State<Fooanimation> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  Decoration myDecor = BoxDecoration(
      borderRadius: BorderRadius.circular(2), color: Colors.deepPurple);
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Foo Animation",style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              width: _width,
              height: _height,
              // color: colorBG,
              decoration: myDecor,
              curve: Curves.bounceInOut,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    _width = 300.0;
                    _height = 300.0;
                    myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue);
                    flag = false;
                  } else {
                    _width = 200.0;
                    _height = 100.0;
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
