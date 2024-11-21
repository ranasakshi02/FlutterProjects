//sized box
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: (Center(
        child: SizedBox(
          width: 200,
          height: 50,
          child: ElevatedButton(onPressed: () {}, child: Text("Click")),
        ),
      )),
    );
  }
}
//sizedbox.expand
// body: (Center(
//         child: SizedBox.expand(
//           child: ElevatedButton(onPressed: () {}, child: Text("Click")),
//         ),
//       )),

//sizedbox.shrink
// body: (Center(
//         child: SizedBox.shrink(
//           // width: 200,
//           // height: 50,
//           child: ElevatedButton(onPressed: () {}, child: Text("Click")),
//         ),
//       )),

//sizedbox with constraints box
// body: (Center(
//           child: ConstrainedBox(
//         constraints: BoxConstraints(
//             minHeight: 40, maxHeight: 80, minWidth: 100, maxWidth: 200),
//         child: SizedBox.ex(
//           // width: 200,
//           // height: 50,
//           child: ElevatedButton(onPressed: () {}, child: Text("Click")),
//         ),
//       ))),

//sizedbox.square
// body: (Center(
//         child: SizedBox.square(
//          dimension: 200.0,
//           child: ElevatedButton(onPressed: () {}, child: Text("Click")),
//         ),
//       )),


//Rich text
// body: (Center(
//           child: RichText(
//               text: const TextSpan(
//                   style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.grey,
//                       fontWeight: FontWeight.w600),
//                   children: [
//             TextSpan(
//               text: "Hello ",
//             ),
//             TextSpan(
//                 text: "World!",
//                 style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     fontStyle: FontStyle.italic,
//                     color: Colors.blueGrey))
//           ])))),

//flutter icon widget
// body: (Center(
//           child: Icon(
//             Icons.add_business_rounded,
//             size: 100,
//             color: Colors.deepPurple,
            
//           ))),

//fontawesome icon widget
// (const Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//         Icon(
//           Icons.add_business_rounded,
//           size: 50,
//           color: Colors.deepPurple,
//         ),
//         SizedBox(width: 20,),
//         FaIcon(
//           FontAwesomeIcons.amazon,
//           size: 50.0,
//           color: Colors.amberAccent,
//         )
//       ]))),

//positioned widget
//  body: (Container(
//         height: 200,
//         width: 300,
//         color: const Color.fromARGB(255, 239, 227, 242),
//         child: Stack(
//           children: [
//             Positioned(
//                 bottom: 50,
//                 right: 20,
//                 child: Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.purple.shade400,
//                 )),
//           ],
//         ),
//       )),

//Statefull && stateLess widgets
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var no1Controller = TextEditingController();
//   var no2Controller = TextEditingController();
//   var result="";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: (Container(
//         color: const Color.fromARGB(255, 220, 205, 247),
//         child: Padding(
//             padding: EdgeInsets.all(12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 TextField(
//                   controller: no1Controller,
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(
//                   width: 20,
//                   height: 20,
//                 ),
//                 TextField(
//                   controller: no2Controller,
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(
//                   width: 20,
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton(
//                         onPressed: () {
//                           var num1 = int.parse(no1Controller.text.toString());
//                           var num2 = int.parse(no2Controller.text.toString());
//                           var ans = num1 + num2;
//                           setState(() {
//                             result = "Sum Result :${ans}";
//                           });
//                         },
//                         child: Text("Add")),
//                     ElevatedButton(
//                         onPressed: () {
//                           var num1 = int.parse(no1Controller.text.toString());
//                           var num2 = int.parse(no2Controller.text.toString());
//                           var ans = num1 - num2;
//                           setState(() {
//                             result = "Sub Result :${ans}";
//                           });
//                         },
//                         child: Text("Sub")),
//                     ElevatedButton(
//                         onPressed: () {
//                           var num1 = int.parse(no1Controller.text.toString());
//                           var num2 = int.parse(no2Controller.text.toString());
//                           var ans = num1 * num2;
//                           setState(() {
//                             result = "multi Result :${ans}";
//                           });
//                         },
//                         child: Text("multi")),
//                     ElevatedButton(
//                         onPressed: () {
//                           var num1 = int.parse(no1Controller.text.toString());
//                           var num2 = int.parse(no2Controller.text.toString());
//                           var ans = num1 / num2;
//                           setState(() {
//                             result = "div Result :${ans.toStringAsFixed(2)}";
//                             ;
//                           });
//                         },
//                         child: Text("div")),
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(20),
//                   child: Text(
//                     result,
//                     style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.deepPurple.shade500,
//                         fontWeight: FontWeight.w700),
//                   ),
//                 )
//               ],
//             )),
//       )),
//     );
//   }
// }

//navgation inFlutter
// /*refer startintroScreen*/

//splash screen  
/** refer splashscreen file */

//Data Passing
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:second_app/myProfileScreen.dart';
// import 'package:second_app/splashScreen.dart';
// import 'package:second_app/startIntroScreen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         // home: MyHomePage(title: "home")
//         home: Splashscreen()

//         // home:IntroPage()
//         );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var no1 = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: (Container(
//           color: const Color.fromARGB(255, 220, 205, 247),
//           child: Center(
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                 Text(
//                   "Dashboard Screen",
//                   style: TextStyle(
//                       fontSize: 26,
//                       color: Colors.deepPurple.shade400,
//                       fontWeight: FontWeight.bold,
//                       fontStyle: FontStyle.italic),
//                 ),
//                 SizedBox(
//                   width: 10,
//                   height: 10,
//                 ),
//                 Padding(
//                     padding: EdgeInsets.all(16),
//                     child: TextField(
//                       controller: no1,
//                       keyboardType: TextInputType.name,
//                     )),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 Myprofilescreen(no1.text.toString())));
//                   },
//                   child: Text("Click"),
//                 ),
//                 SizedBox(
//                   width: 10,
//                   height: 10,
//                 ),
//               ])))),
//     );
//   }
// }
