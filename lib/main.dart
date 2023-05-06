import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/model/sample.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();  
}

class _MyAppState extends State<MyApp> {
  Sample? result; // membuat variabel yg nullable
  // method utk simulasi
  Future _loadJsonSample() async {
    String jsonString = await rootBundle.loadString('assets/sample.json');
    // prosess mapping Data,
    final jsonData = jsonDecode(jsonString); // mengUbah json menjadi json data
    Sample sample = Sample.fromJson(jsonData);
    setState(() { // mengubah data dari widget stateful menjadi 
      result = sample;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flexible Layout',
      home: Scaffold(
        appBar: AppBar(
          title: Text('dasar parsing json'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                _loadJsonSample();
              },
              child: const Text('read json data'),
            ),
            const SizedBox(
              height: 12.0,
            ),
             Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '$result',
                  // '${result?.name}',  // knp ada ? karena dia nullable q
                  style: TextStyle(fontSize: 22.0),
                ))
          ],
        )),
      ),
    );
  }
}
