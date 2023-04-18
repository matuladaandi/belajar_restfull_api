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
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan ListView"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround, // agar tdk mepet tombol hps&+
              children: <Widget>[
                ElevatedButton(onPressed: (){
                  setState(() {
                    widgetsku.add(Text("Data ke- "+ counter.toString()));
                    counter++;   
                  });
                }, child: Text('Tambah Data')),
                ElevatedButton(onPressed: null, child: Text('Hapus Data'))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgetsku,
            )
          ],
        ),
      ),
    );
  }
}
