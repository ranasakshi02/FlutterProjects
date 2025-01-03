import 'package:animation_demo/AnimatedCrossFade.dart';
import 'package:animation_demo/AnimatedOpacity.dart';
import 'package:animation_demo/FooAnimation.dart';
import 'package:animation_demo/HeroAnimation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Fooanimation(),
      // home: AnimatedOpacityScreen(),
      // home: AnimatedCrossFadeScreen(),
      home: HeroAnimationScreen(),
      // home: const MyHomePage(title: 'Animations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Text("data")
    );
  }
}
