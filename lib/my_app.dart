import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home app",
      home: Scaffold(
        body: Center(
          child: Text(
            'hello',
            style: TextStyle(color: Colors.amberAccent, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
