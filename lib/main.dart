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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('text 1 Colomn'),
            Text('text 2 Colomn'),
            Text('text 3 Colomn'),
            Row(
              children: <Widget>[
                Text('text 4 Row'),
                Text('text 5 Row'),
                Text('text 6 Row')
              ],
            )
          ],
        ),
      ),
    );
  }
}
