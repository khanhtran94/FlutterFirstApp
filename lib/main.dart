import 'package:flutter/material.dart';

void main() {
  runApp(new SnackBarDemo());
}

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "SnackBar demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("SnackBar demo"),
        ),
        body: new SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new RaisedButton(
          onPressed: () {
            final SnackBar snackBar = new SnackBar(
              content: new Text("Hey there"),
              action: new SnackBarAction(label: "Undo", onPressed: () {}),
            );
            Scaffold.of(context).showSnackBar(snackBar);
          },
          child: new Text("Show SnackBar")),
    );
  }
}
