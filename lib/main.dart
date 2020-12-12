import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final titile = "GridView example";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: titile,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(titile),
        ),
        body: new Center(
          child: new Text(
            "Hello, how are you , how are you ? i fine thanks you Hello, how are you , how are you ? i fine thanks you",
            textAlign: TextAlign.center,
            overflow: TextOverflow.clip,
            style: new TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
