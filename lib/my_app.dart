import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyApp extends StatelessWidget {
  DateTime _now = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home app",
      home: Scaffold(
        body: Center(
          child: Text(
            DateFormat('dd/MM/yyyy').format(_now),
            style: TextStyle(color: Colors.amberAccent, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
