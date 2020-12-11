import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(
      new MyApp(items: new List<String>.generate(100, (i) => "Item ${i + 1}")));
}

class MyApp extends StatelessWidget {
  final titile = "Dismissing example";

  final List<String> items;
  MyApp({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: titile,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(titile),
        ),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (contex, index) {
              final item = items[index];
              return new Dismissible(
                key: new Key(item),
                child: new ListTile(
                  title: new Text("$item"),
                  subtitle: new Text("$item at index $index"),
                ),
                onDismissed: (direction) {
                  items.removeAt(index);
                  Scaffold.of(context).showSnackBar(
                      new SnackBar(content: new Text("$item dimissed")));
                },
                background: new Container(
                    color: Colors.red,
                    child: new Center(
                      child: new Text("Delete"),
                    )),
              );
            }),
      ),
    );
  }
}
