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
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(titile),
          actions: [
            new IconButton(icon: Icon(Icons.ac_unit_sharp), onPressed: () {}),
            new IconButton(icon: Icon(Icons.car_rental), onPressed: () {}),
            new PopupMenuButton<String>(itemBuilder: (BuildContext context) {
              return [
                new PopupMenuItem<String>(
                  child: new IconButton(
                    color: Colors.black,
                    icon: new Icon(Icons.directions_bus),
                    onPressed: () {},
                  ),
                ),
                new PopupMenuItem<String>(
                    child: new Row(
                  children: [
                    new IconButton(
                      color: Colors.black,
                      icon: new Icon(Icons.directions_train),
                      onPressed: () {},
                    ),
                    new Text("train")
                  ],
                )),
              ];
            })
          ],
        ),
        body: null,
      ),
    );
  }
}
