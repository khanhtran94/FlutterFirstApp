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
          child: new Text("show text"),
        ),
        floatingActionButton: new IconButton(
          icon: new Icon(Icons.volume_mute),
          tooltip: "mute",
          onPressed: () {
            print("button press");
          },
        ),
      ),
    );
  }
}
