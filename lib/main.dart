import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final titile = "Container example";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: titile,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(titile),
        ),
        body: new Container(
          margin: const EdgeInsets.all(10.0),
          color: const Color(0xFF00ff11),
          width: 300.0,
          height: 300.0,
          child: new Text(
            "My container",
            style: Theme.of(context)
                .textTheme
                // ignore: deprecated_member_use
                .display1
                .copyWith(color: Colors.white),
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
