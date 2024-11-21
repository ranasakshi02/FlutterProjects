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
      home: const MyHomePage(title: 'DashBoard'),
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
  var heightInch = TextEditingController();
  var weight = TextEditingController();
  var heightFeet = TextEditingController();
  var result_BMI = "";
  var colorBg = Color.fromARGB(255, 220, 209, 240);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
          color: colorBg,
          child: Padding(
              padding: EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'BMI',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple),
                  ),
                  SizedBox(width: 20, height: 20),
                  TextField(
                    controller: weight,
                    decoration: InputDecoration(
                        label: Text('Enter your Weight in Kgs'),
                        prefixIcon: Icon(Icons.line_weight)),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(width: 10, height: 10),
                  TextField(
                    controller: heightFeet,
                    decoration: InputDecoration(
                        label: Text('Enter your Height in Feet'),
                        prefixIcon: Icon(Icons.height)),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(width: 10, height: 10),
                  TextField(
                    controller: heightInch,
                    decoration: InputDecoration(
                        label: Text('Enter your Height in Inch'),
                        prefixIcon: Icon(Icons.height)),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(width: 50, height: 50),
                  ElevatedButton(
                      onPressed: () {
                        var wt = weight.text.toString();
                        var ft = heightFeet.text.toString();
                        var inch = heightInch.text.toString();
                        if (wt != "" && ft != "" && inch != "") {
                          var iwt = int.parse(wt);
                          var ift = int.parse(ft);
                          var i_inch = int.parse(inch);
                          var tinch = (ift * 12) + i_inch;
                          var ht_mtr = (tinch * 2.54) / 100;
                          var bmi = iwt / (ht_mtr * ht_mtr);
                          var msg = "";
                          setState(() {
                            if (bmi > 25) {
                              msg = "You are overWeight";
                              colorBg = Colors.orange.shade200;
                            } else if (bmi < 18) {
                              msg = "You are underWeight";
                              colorBg = Colors.red.shade200;
                            } else {
                              msg = "You are Healthy";
                              colorBg = Colors.green.shade200;
                            }
                            result_BMI =
                                "$msg \n Your BMI is: ${(bmi).toStringAsFixed(4)}";
                          });
                        } else {
                          setState(() {
                            result_BMI = "Please fill all the required fields!";
                          });
                        }
                      },
                      child: Text("Calculate")),
                  SizedBox(width: 20, height: 20),
                  Text(
                    result_BMI,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepPurple),
                  ),
                ],
              ))),
    );
  }
}
