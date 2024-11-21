import 'dart:async';

import 'package:flutter/material.dart';
import 'package:second_app/main.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Start the main app after a delay
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => MyHomePage(title: "Home")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 176, 133, 251),
        child: const Center(
          child: Text(
            'Splashscreen',
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
    ));
  }
}
