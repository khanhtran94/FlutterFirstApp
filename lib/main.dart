import 'package:flutter/material.dart';

void main() => runApp(new MyApp(
      TextInput: new Text("Hello from main"),
    ));

class MyApp extends StatelessWidget {
  final Widget TextInput;
  MyApp({this.TextInput});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MySample",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("My second app"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[TextInput, TextInput],
          ),
        ),
      ),
    );
  }
}
