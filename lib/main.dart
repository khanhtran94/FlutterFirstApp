import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final title = "Horizontal list";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Container(
          margin: new EdgeInsets.symmetric(vertical: 20.0),
          height: 200,
          child: new ListView(
            scrollDirection: Axis.horizontal,
            children: [
              new Container(
                width: 160,
                color: Colors.amber[400],
              ),
              new Container(
                width: 160,
                color: Colors.red[400],
              ),
              new Container(
                width: 160,
                color: Colors.blue[400],
              ),
              new Container(
                width: 160,
                color: Colors.brown[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
