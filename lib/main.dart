import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Icon selectedIcon = new Icon(Icons.nat);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void changeSelection(Icon icon) {
    setState(() {
      selectedIcon = icon;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("GridView"),
          backgroundColor: Colors.amber,
          elevation: 10.0,
          toolbarOpacity: 1.0,
          leading:
              new IconButton(icon: new Icon(Icons.menu_open), onPressed: () {}),
          actions: [
            new IconButton(
                icon: new Icon(Icons.mail),
                onPressed: () {
                  changeSelection(new Icon(Icons.mail));
                }),
            new IconButton(
                icon: new Icon(Icons.delete),
                onPressed: () {
                  changeSelection(new Icon(Icons.delete));
                }),
            new IconButton(
                icon: new Icon(Icons.adb),
                onPressed: () {
                  changeSelection(new Icon(Icons.adb));
                }),
          ],
        ),
        body: new Card(
          color: Colors.blue,
          child: new Center(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                new Icon(
                  selectedIcon.icon,
                  size: 128.0,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
