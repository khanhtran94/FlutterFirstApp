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
        body: new Stack(
          alignment: Alignment.topCenter,
          children: [
            new Card(
              child: new Padding(padding: const EdgeInsets.all(200.0)),
              color: Colors.blueAccent,
            ),
            new Card(
              child: new Padding(padding: const EdgeInsets.all(100.0)),
              color: Colors.red,
            ),
            new Card(
              child: new Padding(padding: const EdgeInsets.all(50.0)),
              color: Colors.white10,
            )
          ],
        ),
      ),
    );
  }
}
