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
          title: Text('Learn row and colum'),
        ),
        body: Column(
          children: <Widget>[
            Text('text 1 '),
            Text('text 2'),
            Text('text 3')
          ],
        ),
      ),
    );
  }
}
