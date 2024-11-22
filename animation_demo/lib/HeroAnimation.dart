import 'package:animation_demo/HeroAnimationDetails.dart';
import 'package:flutter/material.dart';

class HeroAnimationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HeroAnimationState();
  }
}

class HeroAnimationState extends State<HeroAnimationScreen> {
  var _width = 200.0;
  var _height = 200.0;
  bool flag = true;
  Decoration myDecor = BoxDecoration(
      borderRadius: BorderRadius.circular(2), color: Colors.deepPurple);
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          "Hero Animation",
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
                          builder: (context) => HeroAnimationDetails()));
                },
                child: Hero(
                  tag: 'bacckground',
                  child: Image.asset(
                    'assets/images/alejandro.jpg',
                    width: _width,
                    height: _height,
                  ),
                )),
            // SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () {
            //    Navigator.push(context, MaterialPageRoute(builder: (context)=>M))
            //   },
            //   child: Text("Animate"),
            // )
          ],
        ),
      ),
    ));
  }
}
