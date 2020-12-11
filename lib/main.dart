import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = "Orientation demo";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: appTitle,
      home: OrientationList(title: appTitle),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;

  OrientationList({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new OrientationBuilder(builder: (context, orientation) {
        return new GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: new List.generate(100, (index) {
              return new Center(
                child: new Text(
                  'item $index',
                  style: Theme.of(context).textTheme.headline5,
                ),
              );
            }));
      }),
    );
  }
}
