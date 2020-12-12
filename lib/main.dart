import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final titile = "Floating button example";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: titile,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(titile),
        ),
        body: new Center(
          child: new FloatingActionButton(
            onPressed: () {
              print("press data");
            },
            child: new Icon(Icons.access_alarm),
          ),
        ),
      ),
    );
  }
}
