import 'package:flutter/material.dart';

class Myprofilescreen extends StatefulWidget {
  var namefromHome;
  Myprofilescreen(this.namefromHome);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyProfileScreenState(namefromHome);
  }
}

class MyProfileScreenState extends State<Myprofilescreen> {
  var name = '';
  MyProfileScreenState(this.name);
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text("My Profile")),
      body: (Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 190, 155, 249),
        child: Column(
          children: [
            Text(
              "Welcome,${name}",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Back"),
            ),
          ],
        ),
      )),
    ));
  }
}
