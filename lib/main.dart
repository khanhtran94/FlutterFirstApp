import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp(name: 'khanht', age: 20));
}

class MyApp extends StatelessWidget {
  String name;
  int age;
  MyApp({this.name, this.age});

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Text(
        '${this.name} - ${this.age}',
        style: TextStyle(fontSize: 30, color: Colors.amberAccent),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
