import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great place',
      theme: ThemeData(
          primaryColor: Colors.indigo, accentColor: Colors.amberAccent),
    );
  }
}
