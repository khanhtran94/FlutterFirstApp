import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  String name;
  int age;
  MyApp({this.name, this.age});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home app",
      home: Scaffold(
        body: Center(
          child: Text(
            '${this.name} - ${this.age}',
            style: TextStyle(color: Colors.amberAccent, fontSize: 40),
          ),
        ),
      ),
    );
  }