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
          title: Text("Latihan Container 2"),
        ),
        body: Container(
          color: Colors.red[200],
          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                    colors: <Color>[Colors.amber, Colors.blueAccent])),
            margin: EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
