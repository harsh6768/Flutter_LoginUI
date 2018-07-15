import 'package:flutter/material.dart';

void main() => runApp(new MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.cyan,
          title: new Text("Home Activity"),
        ),

      ),
    );
  }
}