import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp(
    items: new List<String>.generate(10000, (index) => "item $index"),
  ));
}

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, this.items}) : super(key: key);
  final title = "Long list";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView.builder(itemBuilder: (context, index) {
          return new ListTile(
            title: new Text("${items[index]}"),
          );
        }),
      ),
    );
  }
}
