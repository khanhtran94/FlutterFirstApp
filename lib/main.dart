import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> items = new List<String>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 100; i++) {
      items.add("Item $i");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("GridView"),
        ),
        body: new GridView.builder(
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              color: Colors.amberAccent,
              child: new Padding(
                padding: const EdgeInsets.all(20.0),
                child: new Text(items[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
