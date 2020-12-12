import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final titile = "GridView example";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: titile,
        home: new MainScreen(
          title: titile,
        ));
  }
}

class MainScreen extends StatefulWidget {
  final String title;
  MainScreen({Key key, this.title}) : super(key: key);

  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.1,
          duration: new Duration(milliseconds: 500),
          child: new Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: "Toogle opacity",
        child: new Icon(Icons.format_paint),
      ),
    );
  }
}
