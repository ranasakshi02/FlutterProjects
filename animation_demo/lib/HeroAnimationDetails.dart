import 'package:animation_demo/HeroAnimation.dart';
import 'package:flutter/material.dart';

class HeroAnimationDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HeroAnimationDetailsState();
  }
}

class HeroAnimationDetailsState extends State<HeroAnimationDetails> {
  var _width = 350.0;
  var _height = 350.0;
  bool flag = true;
  Decoration myDecor = BoxDecoration(
      borderRadius: BorderRadius.circular(2), color: Colors.deepPurple);
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          "Hero Animation Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HeroAnimationScreen()));
                },
                child: Hero(
                  tag: 'bacckground',
                  child: Image.asset(
                    'assets/images/alejandro.jpg',
                    width: _width,
                    height: _height,
                  ),
                )),
            SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () {
            //     setState(() {
            //       if (flag) {
            //         _width = 300.0;
            //         _height = 300.0;
            //         myDecor = BoxDecoration(
            //             borderRadius: BorderRadius.circular(50),
            //             color: Colors.blue);
            //         flag = false;
            //       } else {
            //         _width = 200.0;
            //         _height = 100.0;
            //         myDecor = BoxDecoration(
            //             borderRadius: BorderRadius.circular(2),
            //             color: Colors.deepPurple);
            //         flag = true;
            //       }
            //     });
            //   },
            //   child: Text("Animate"),
            // )
          ],
        ),
      ),
    ));
  }
}
