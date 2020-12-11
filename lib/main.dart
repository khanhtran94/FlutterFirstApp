import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final title = "Basic list";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.map),
              title: new Text("Map"),
            ),
            new ListTile(
              leading: new Icon(Icons.photo_album),
              title: new Text("Photo album"),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("Phone"),
            ),
          ],
        ),
      ),
    );
  }
}
