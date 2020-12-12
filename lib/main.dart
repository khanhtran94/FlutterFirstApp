import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final titile = "button bar example";

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
          child: new ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: [
              new RaisedButton(
                onPressed: () {},
                child: new Text("Yes"),
              ),
              new RaisedButton(
                onPressed: () {},
                child: new Text("No"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
