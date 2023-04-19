import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn Container Animation & GesturDetector'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
                duration: Duration(seconds: 1),
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(156), random.nextInt(156)),
                width: 50.0 + random.nextInt(101),
                height: 50.0 + random.nextInt(101)),
          ),
        ),
      ),
    );
  }
}
