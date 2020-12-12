import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final titile = "Row example";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: titile,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(titile),
        ),
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Expanded(
                child: new Text(
              "Text 1",
              textAlign: TextAlign.right,
              style: new TextStyle(
                color: Colors.green,
              ),
            )),
            new Expanded(child: new Text("Text 2")),
            new Expanded(child: new Text("Text 3")),
            new Expanded(child: new Text("Text 4")),
            new Expanded(
                child: new FittedBox(
              fit: BoxFit.contain,
              child: const FlutterLogo(),
            ))
          ],
        ),
      ),
    );
  }
}
