import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.red[200],
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          child: Container(color: Colors.blue),
        ),
      ),
    );
  }
}
