import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          //** Center */
          child: (Container(
            width: 200,
            height: 100,
            color: Colors.lime,
            child: (Center(
              child: (
                  //** Buttons */
                  //   TextButton(
                  //   child: (Text(
                  //     "Click Me!!",
                  //     style: TextStyle(
                  //       fontSize: 20,
                  //       color: Colors.blueAccent,
                  //       fontWeight: FontWeight.w500,
                  //     ),
                  //   )),
                  //   onPressed: () => {print("btn pressed")},
                  //   onLongPress: () {
                  //     print("long pressed!");
                  //   },
                  // )

                  //     ElevatedButton(
                  //   child: Text("Click Elevated !"),
                  //   onPressed: () {
                  //     print("pressed elevated !!");
                  //   },
                  //   onLongPress: () => {print("long pressed elevated !")},
                  // )
                  OutlinedButton(
                child: Text("Outlined Button"),
                onPressed: () => print("outline pressed !"),
                onLongPress: () => print("outline long pressed !"),
              )),
            )),
          )),
        ));
  }
}
/** Image */

//  body: Center(
//           child: (Container(
//             height: 200,
//             width: 200,
//             child: Image.asset(
//               'assets/images/alvan.jpg',
//             ),
//           )),
//         )

/** Row & Column */
// body: Container(
//           width: 300,
//           height: 300,
//           color: Colors.lightBlueAccent,
//           child: (Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text("Text 1"),
//               Text("Text 2"),
//               Text("Text 3"),
//               Text("Text 4"),
//               OutlinedButton(
//                 child: Text("Outlined Button"),
//                 onPressed: () => print("outline pressed !"),
//                 onLongPress: () => print("outline long pressed !"),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Text("text6"),
//                   Text("Text7"),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("text8"),
//                       Text("Text9"),
//                       OutlinedButton(
//                         child: Text("Outlined Button 1"),
//                         onPressed: () => print("outline pressed !"),
//                         onLongPress: () => print("outline long pressed !"),
//                       ),
//                     ],
//                   )
//                 ],
//               )
//             ],
//           )),
//         )

/** InkWell */
// body: Center(
//           child:
//               //   InkWell(
//               // onTap: () => print("on tap Inkwell"),
//               // onLongPress: () => print("on long press Inkwell"),
//               // onDoubleTap: () => print("on doublt tap Inkwell"),
//               // child:
//               Container(
//             width: 300,
//             height: 300,
//             color: Colors.lightBlueAccent,
//             child: (Center(
//                 child: InkWell(
//               onTap: () => print("on tap Inkwell"),
//               onLongPress: () => print("on long press Inkwell"),
//               onDoubleTap: () => print("on doublt tap Inkwell"),
//               child: Text(
//                 " click here!",
//                 style: TextStyle(fontSize: 18),
//               ),
//             ))),
//             // ),
//           ),
//         )

/** Single Child ScrollView */
// body: Padding(
//             padding: const EdgeInsets.all(10),
//             child: SingleChildScrollView(
//                 child: Column(children: [
//               Padding(
//                   padding: const EdgeInsets.all(0),
//                   child: SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(children: [
//                         Container(
//                           width: 200,
//                           height: 200,
//                           color: Colors.lightBlueAccent,
//                           margin: EdgeInsets.only(bottom: 4, right: 4),
//                           // child: (Center(child: ())),
//                         ),
//                         Container(
//                           width: 200,
//                           height: 200,
//                           color: Colors.greenAccent,
//                           margin: EdgeInsets.only(bottom: 4, right: 4),
//                           // child: (Center(child: ())),
//                         ),
//                         Container(
//                           width: 200,
//                           height: 200,
//                           color: Colors.amber,
//                           margin: EdgeInsets.only(bottom: 4, right: 4),
//                           // child: (Center(child: ())),
//                         ),
//                         Container(
//                           width: 200,
//                           height: 200,
//                           color: Colors.cyan,
//                           margin: EdgeInsets.only(bottom: 4, right: 4),
//                           // child: (Center(child: ())),
//                         ),
//                         Container(
//                           width: 200,
//                           height: 200,
//                           color: Colors.cyanAccent,
//                           margin: EdgeInsets.only(bottom: 4, right: 4),
//                           // child: (Center(child: ())),
//                         )
//                       ]))),
//               Container(
//                 // width: 200,
//                 height: 200,
//                 color: Colors.amberAccent,
//                 margin: EdgeInsets.only(bottom: 4),
//                 // child: (Center(child: ())),
//               ),
//               Container(
//                 // width: 200,
//                 height: 200,
//                 color: Colors.blueGrey,
//                 margin: EdgeInsets.only(bottom: 4),
//                 // child: (Center(child: ())),
//               ),
//               Container(
//                 // width: 200,
//                 height: 200,
//                 color: Colors.brown,
//                 margin: EdgeInsets.only(bottom: 4),
//                 // child: (Center(child: ())),
//               ),
//               Container(
//                 // width: 200,
//                 height: 200,
//                 color: Colors.black38,
//                 margin: EdgeInsets.only(bottom: 4),
//                 // child: (Center(child: ())),
//               ),
//             ])))

/** List View */
// body: Padding(
//             padding: const EdgeInsets.all(10),
//             child: ListView(
// reverse: true,
//               scrollDirection: Axis.horizontal,
//               children: [
//                 Text(
//                   "1",
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 Text(
//                   "2",
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 Text(
//                   "3",
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 Text(
//                   "4",
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 Text(
//                   "5",
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 Text(
//                   "6",
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ))

/**ListView.Builder */
//  var arrNames = [
//       "Name1",
//       "Name2",
//       "Name3",
//       "Name4",
//       "Name5",
//       "Name6",
//       "Name7"
//     ];
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.title),
//         ),
//         body: Padding(
//             padding: const EdgeInsets.all(10),
//             child: (ListView.builder(
//               // reverse: true,
//               itemBuilder: (context, index) {
//                 return Text(arrNames[index],
//                     style:
//                         TextStyle(fontSize: 18, fontWeight: FontWeight.w600));
//               },
//               itemCount: arrNames.length,
//               itemExtent: 100,
//             ))));

/** ListView.Seprated */
// var arrNames = [
//       "Name1",
//       "Name2",
//       "Name3",
//       "Name4",
//       "Name5",
//       "Name6",
//       "Name7"
//     ];
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.title),
//         ),
//         body: Padding(
//             padding: const EdgeInsets.all(10),
//             child: (ListView.separated(
//               // reverse: true,
//               separatorBuilder: (context, index) {
//                 return Divider(
//                   height: 4,
//                   thickness: 2.0,
//                 );
//               },
//               itemBuilder: (context, index) {
//                 return Text(arrNames[index],
//                     style:
//                         TextStyle(fontSize: 18, fontWeight: FontWeight.w600));
//               },
//               itemCount: arrNames.length,
//             ))));

/** Container Decoration */
// body: Container(
//           color: Colors.deepPurpleAccent.shade100,
//           height: double.infinity,
//           width: double.infinity,
//           child: Center(
//               child: Container(
//             width: 200,
//             height: 200,
//             decoration: BoxDecoration(
//                 color: Colors.deepPurple,
//                 // borderRadius: BorderRadius.circular(30),
//                 border: Border.all(width: 3, color: Colors.pinkAccent),
//                 boxShadow: [
//                   BoxShadow(
//                       blurRadius: 11, spreadRadius: 10, color: Colors.black12)
//                 ],
//                 shape: BoxShape.circle,// if shape circle then remove broderradius
//                 ),
//             // borderRadius: BorderRadius.only(
//             //     // topLeft: Radius.elliptical(30, 90), //(x,y)
//             //     topLeft: Radius.circular(30), //(x,y)
//             //     bottomRight: Radius.circular(30))),

//             // borderRadius: BorderRadius.all(Radius.circular(20))),
//           )),
//         )


/**Expanded Widgets */
// (Column( //same for Row
//           // mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               // width: 100,
//               height: 100,
//               color: Colors.blue,
//             ),
//             Expanded(
//                 flex: 2,
//                 child: Container(
//                   // width: 100,
//                   height: 100,
//                   color: Colors.amber,
//                 )),
//             Expanded(
//                 flex: 1,
//                 child: Container(
//                   // width: 100,
//                   height: 100,
//                   color: Colors.cyan,
//                 )),
//             Container(
//               // width: 100,
//               height: 100,
//               color: Colors.blueGrey,
//             ),
//           ],
//         ))

/**List Tile  */
//  body: Padding(
//             padding: const EdgeInsets.all(10),
//             child: (ListView.separated(
//               // reverse: true,
//               separatorBuilder: (context, index) {
//                 return Divider(
//                   height: 10,
//                   thickness: 1.0,
//                 );
//               },
//               itemBuilder: (context, index) {
//                 return ListTile(
//                     leading: Text("${index + 1}"),
//                     title: Text(arrNames[index]),
//                     subtitle: Text("Subtitle"),
//                     trailing: Icon(Icons.add));
//                 // return Text(arrNames[index],
//                 //     style:
//                 //         TextStyle(fontSize: 18, fontWeight: FontWeight.w600));
//               },
//               itemCount: arrNames.length,
//             )))

/**Circle Avatar */
// Padding(
//             padding: const EdgeInsets.all(10),
//             child: (ListView.separated(
//               // reverse: true,
//               separatorBuilder: (context, index) {
//                 return Divider(
//                   height: 10,
//                   thickness: 1.0,
//                 );
//               },
//               itemBuilder: (context, index) {
//                 return ListTile(
//                     leading:
//                         // Container(
//                         //     width: 50,
//                         //     height: 50,
//                         //     child:
//                         CircleAvatar(
//                             // backgroundImage: AssetImage('assets/images/jay.jpg'),
//                             backgroundColor: Colors.grey,
//                             radius: 50,
//                             // minRadius: 20,
//                             // maxRadius: 30,
//                             child: Column(
//                               children: [
//                                 Container(
//                                     width: 35,
//                                     height: 35,
//                                     child:
//                                         (Image.asset('assets/images/jay.jpg'))),
//                                 Text("Name",
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 12))
//                               ],
//                             )
//                             // Text(
//                             //   "Name",
//                             //   style: TextStyle(color: Colors.white),
//                             // ),
//                             // )
//                             ),
//                     title: Text(arrNames[index]),
//                     subtitle: Text("Subtitle"),
//                     trailing: Icon(Icons.add));
//                 // return Text(arrNames[index],
//                 //     style:
//                 //         TextStyle(fontSize: 18, fontWeight: FontWeight.w600));
//               },
//               itemCount: arrNames.length,
//             )))

/** Custom Fonts */
// body:Container(
//             width: 200,
//             height: 300,
//             margin: EdgeInsets.all(30),
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Hello World!",
//                     style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.black,
//                         fontFamily: "CustomFont"),
//                   ),
//                   Text(
//                     "John Doe!",
//                     style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.black,
//                         fontWeight: FontWeight.w500,
//                         fontFamily: "CustomFont1"),
//                   ),
//                   Text(
//                     "Hello Flutter!",
//                     style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.black,
//                         fontFamily: "CustomFon2"),
//                   ),
//                   Text(
//                     "Hello World!",
//                     style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.black,
//                         fontFamily: "CustomFont3"),
//                   ),
//                 ]))

/** styles & themes */

// import 'package:first_app/utils/text_theme.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//           textTheme: const TextTheme(
//               headlineLarge: TextStyle(
//                 fontSize: 20,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//               labelSmall: TextStyle(
//                   fontSize: 16,
//                   color: Colors.black,
//                   fontWeight: FontWeight.w500,
//                   fontStyle: FontStyle.italic))),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.title),
//         ),
//         body: Container(
//             // width: 200,
//             height: 300,
//             margin: EdgeInsets.all(30),
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Hello World!",
//                       style: Theme.of(context)
//                           .textTheme
//                           .labelSmall!
//                           .copyWith(fontSize: 13)),
//                   Text("John Doe!",
//                       style: Theme.of(context).textTheme.headlineLarge),
//                   Text(
//                     "Hello Flutter!",
//                     style: Theme.of(context)
//                         .textTheme
//                         .labelSmall!
//                         .copyWith(color: Colors.red),
//                   ),
//                   Text("Hello World!!!",
//                       style: Theme.of(context).textTheme.headlineLarge),
//                   Text("External TextStyle size 11",
//                       style: mTextStyle11(textColor: Colors.deepPurple)),
//                   Text("External TextStyle size 18", style: mTextStyle18()),
//                   Text("External TextStyle size 22", style: mTextStyle22()),
//                 ])));
//   }
// }

/** Card widget */

// body:Card(
//             // elevation: 5,
//             // shadowColor: Colors.red,
//             child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Text(
//                   "Hello World!",
//                   style: TextStyle(fontSize: 18),
//                 )))

/** Text Input */
// var emailText = TextEditingController();
//   var passwordText = TextEditingController();
// body: Center(
//           child: Container(
//               width: 300,
//               margin: EdgeInsets.all(10.0),
//               child: Column(children: [
//                 TextField(
//                   keyboardType: TextInputType.emailAddress,
//                   // enabled: false,
//                   controller: emailText,
//                   decoration: InputDecoration(
//                     hintText: "Enter Email",
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(color: Colors.red, width: 2)),
//                     // border: OutlineInputBorder(
//                     //     borderRadius: BorderRadius.circular(10),
//                     // borderSide: BorderSide(color: Colors.red))
//                     enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(color: Colors.blue, width: 2)),
//                     disabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(color: Colors.grey, width: 2)),
//                     // suffixText: "Username Exists",
//                     // suffixIcon: IconButton(
//                     //     onPressed: () {},
//                     //     icon: Icon(
//                     //       Icons.remove_red_eye,
//                     //       color: Colors.purpleAccent,
//                     //     )),
//                     prefixIcon: Icon(
//                       Icons.mail,
//                       color: Colors.purple,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 10,
//                 ),
//                 TextField(
//                   controller: passwordText,
//                   obscureText: true,
//                   obscuringCharacter: "*",
//                   decoration: InputDecoration(
//                       hintText: "Enter Password",
//                       prefixIcon: Icon(
//                         Icons.password,
//                         color: Colors.purple,
//                       ),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8),
//                           borderSide: BorderSide(color: Colors.red))),
//                 ),
//                 Container(
//                   height: 14,
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       String uEmail = emailText.text.toString();
//                       String uPass = passwordText.text.toString();
//                       print("Email $uEmail Pass $uPass");
//                     },
//                     child: Text("Login"))
//               ])))

/**get  Current Date time  & formates of date and time  */
// Container(
//           // width: 300,
//           margin: EdgeInsets.all(10.0),
//           child: Column(children: [
//             Text(
//               "Current: $time",
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               "Day: ${time.day}",
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               "Month: ${time.month}",
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               "weekDay: ${time.weekday}",
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               "Time : ${time.hour}:${time.minute}",
//               style: TextStyle(fontSize: 20),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {});
//                 },
//                 child: Text("Current Time")),
//             Text(
//               "dd/mm/yy: ${DateFormat("dd/mm/yy").format(time)}",
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               "jms: ${DateFormat("jms").format(time)}",
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               "quarter: ${DateFormat("QQQQ").format(time)}",
//               style: TextStyle(fontSize: 20),
//             ),
//           ]))

/** Date Time Pikcer */
// Container(
//           // width: 300,
//           margin: EdgeInsets.all(10.0),
//           child: Column(children: [
//             ElevatedButton(
//                 onPressed: () async {
//                   DateTime? datePicked = await showDatePicker(
//                       context: context,
//                       initialDate: DateTime.now(),
//                       firstDate: DateTime(2021),
//                       lastDate: DateTime(2025));

//                   if (datePicked != null) {
//                     print("selected date $datePicked");
//                     setState(() {});
//                   }
//                 },
//                 child: Text("Click Here for Date!")),
//             ElevatedButton(
//                 onPressed: () async {
//                   TimeOfDay? timePicked = await showTimePicker(
//                     context: context,
//                     initialTime: TimeOfDay.now(),
//                     initialEntryMode: TimePickerEntryMode.input,
//                   );

//                   if (timePicked != null) {
//                     print("selected Time $timePicked");
//                     // setState(() {});
//                   }
//                 },
//                 child: Text("Click Here for Time!")),
//             Text(
//               "Date ${DateFormat("dd/mm/yy").format(time)}",
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               "Time ${DateFormat("dd/mm/yy").format(time)}",
//               style: TextStyle(fontSize: 20),
//             ),
//           ]))

//**GridView.Count */
    // var colors = [
    //   Colors.lightBlue,
    //   Colors.lightBlueAccent,
    //   Colors.green,
    //   Colors.greenAccent,
    //   Colors.orange,
    //   Colors.orangeAccent,
    //   Colors.amber,
    //   Colors.amberAccent
    // ];

  // body: 
  //     GridView.count(
  //       crossAxisCount: 3,
  //       crossAxisSpacing: 6,
  //       mainAxisSpacing: 6,
  //       children: [
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[0],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[1],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[2],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[3],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[4],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[5],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[6],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[7],
  //             )),
  //       ],
  //     ),
      
  /**GridView.extent */
  // GridView.extent(
  //       maxCrossAxisExtent: 200,
  //       crossAxisSpacing: 6,
  //       mainAxisSpacing: 6,
  //       children: [
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[0],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[1],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[2],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[3],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[4],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[5],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[6],
  //             )),
  //         Padding(
  //             padding: EdgeInsets.all(0),
  //             child: Container(
  //               color: colors[7],
  //             )),
  //       ],
  //     ),

  //GridView.Builder
  // GridView.builder(
  //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //               crossAxisCount: 3, crossAxisSpacing: 4, mainAxisSpacing: 4),
  //           itemCount: colors.length,
  //           itemBuilder: (context, index) {
  //             return Container(color: colors[index]);
  //           })

  /** Callback Functions */
//   class _MyHomePageState extends State<MyHomePage> {
//   callBack(name) {
//     print("Clicked $name");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.title),
//         ),
//         body: ElevatedButton(
//           child: Text("Click Elevated !"),
//           onPressed: () {
//             callBack("Hello");
//           },
//         ));
//   }
// }


/** Spliting app int o widgets */
// class _MyHomePageState extends State<MyHomePage> {
//   callBack(name) {
//     print("Clicked $name");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.title),
//         ),
//         body: Container(
//           child: Column(
//             children: [
//               FirstCardItem(),
//               SecondCardITem(),
//               Expanded(flex: 2, child: Container(color: Colors.lightGreen)),
//               Expanded(
//                   flex: 1, child: Container(color: Colors.lightGreenAccent)),
//               Expanded(flex: 1, child: Container(color: Colors.lightBlue)),
//               Expanded(
//                   flex: 2, child: Container(color: Colors.lightBlueAccent)),
//             ],
//           ),
//         ));
//   }
// }

// class FirstCardItem extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return (Expanded(
//         flex: 3,
//         child: Container(
//           color: Colors.amber,
//           child: ListView.builder(
//               itemCount: 10,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) => const Padding(
//                     padding: EdgeInsets.all(6),
//                     child: SizedBox(
//                       width: 100,
//                       child: CircleAvatar(
//                         backgroundColor: Colors.pinkAccent,
//                       ),
//                     ),
//                   )),
//         )));
//   }
// }

// class SecondCardITem extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return (Expanded(
//         flex: 5,
//         child: Container(
//           color: Colors.amberAccent,
//           child: ListView.builder(
//               itemCount: 10,
//               itemBuilder: (context, index) => const Padding(
//                     padding: EdgeInsets.all(4),
//                     child: ListTile(
//                       leading: CircleAvatar(),
//                       title: Text("Name"),
//                       subtitle: Text("Email"),
//                       trailing: Icon(Icons.delete),
//                     ),
//                   )),
//         )));
//   }
// }

/** stack widget */
// Container(
//             height: 300,
//             width: 300,
//             child: Stack(children: [
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.amber,
//               ),
//               Positioned(
//                   left: 10,
//                   top: 10,
//                   child: Container(
//                     height: 220,
//                     width: 220,
//                     color: Colors.red,
//                   )),
//               Container(
//                 height: 100,
//                 width: 100,
//                 color: Colors.green,
//               )
//             ]))

/** Custom Widget */
//  body: Cutomelevatedbutton(
//           btnName: "Click Custom",
//           icon: Icon(Icons.lock),
//           onPressButton: () => print("pressed!"),
//         )


/** wrap widgets */
// Container(
//             width: double.infinity,
//             height: double.infinity,
//             child: Wrap(
//               direction: Axis.vertical,
//               spacing: 5,
//               runSpacing: 5,
//               alignment: WrapAlignment.center,
//               children: [
//                 Container(
//                   width: 50,
//                   height: 50,
//                   color: Colors.blue,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.amber,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.cyan,
//                 ),
//                 Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.blueGrey,
//                 ),
//                 Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.pink,
//                 ),
//                 Container(
//                   width: 50,
//                   height: 50,
//                   color: Colors.blue,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.amber,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.cyan,
//                 ),
//                 Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.blueGrey,
//                 ),
//                 Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.pink,
//                 ),
//               ],
//             ))