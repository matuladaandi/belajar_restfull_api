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
          title: Text('My App Learn'),
        ),
        body: Center(
            child: Container(
                color: Colors.red.shade200,
                width: 150,
                height: 50,
                child: Text(
                  'saya sedang melatih kemampuan flutter saya secara otodidak',
                  // textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.white60,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w100, fontSize: 20),
                ))),
      ),
    );
  }
}
