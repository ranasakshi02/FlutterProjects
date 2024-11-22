import 'package:flutter/material.dart';

class MappingListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MappingListState();
  }
}

class MappingListState extends State<MappingListScreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade100,
          title: Text("Mapping List"),
        ),
        body: Padding(padding: EdgeInsets.all(0), child: Text("data"))));
  }
}