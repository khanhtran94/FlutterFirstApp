import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final titile = "GridView example";

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
          child: new FlatButton(
            onPressed: () {
              print("button press");
            },
            child: new Text(
              "Flat button",
            ),
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
