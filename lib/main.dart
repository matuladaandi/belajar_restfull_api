import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgetsku = []; // membuat list

_MyAppState(){
  for(int i =0; i <= 40; i++){
  widgetsku.add(Text("data ke- " + i.toString()));
  }
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan ListView"),
        ),
        body: ListView(children:<Widget>[
          Row(
            children: <Widget>[
              
            ],
          )
        ],
        ),
      ),
    );
  }
}
