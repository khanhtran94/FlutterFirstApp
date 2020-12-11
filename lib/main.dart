import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final title = "Inkwell demo";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: title,
        home: MyHomePage(
          title: title,
        ));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new InkWell(
      onTap: () {
        Scaffold.of(context)
            .showSnackBar(new SnackBar(content: new Text("Tapped")));
      },
      child: new Container(
        padding: new EdgeInsets.all(12),
        child: new Text("Flat button"),
        color: Colors.red,
      ),
    );
  }
}
