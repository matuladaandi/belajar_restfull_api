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
          title: Text("Latihan Stylee"),
        ),
        body: Center(
          child: Text(
            'ini adalah text',
            style: TextStyle(fontFamily: "Raleway-Italic-VariableFont_wght",fontSize: 20),
          ),
        ),
      ),
    );
  }
}
