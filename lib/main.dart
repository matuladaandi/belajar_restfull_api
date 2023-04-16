import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  int kurang = 0;
  
  void kurangBil(){
    setState(() {
      kurang = number-1 ;
    });
  }
  void tekanTombol() {
    setState(() {  // agar ke reload / diubah
      number = number+1 ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Full"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(number.toString(),style: TextStyle(color: Colors.green, fontSize: 10 + number.toDouble()),),
            Text(kurang.toString(), style: TextStyle(color: Colors.red),),
            ElevatedButton(
              child: Text("Tambah Bilangan"),
              onPressed: tekanTombol,
            ),
            ElevatedButton(onPressed: kurangBil, child: Text('Kurangi 1'))
          ],
         ),
        ),
      ),
    );
  }
}
