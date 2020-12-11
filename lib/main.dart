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
        body: new GridView.count(
          crossAxisCount: 3,
          children: new List.generate(100, (index) {
            return new Center(
              child: new Text(
                "Item $index",
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      ),
    );
  }
}
