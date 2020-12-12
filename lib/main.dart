import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final titile = "Hero animation example";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: titile, home: new MainScreen());
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Main screen"),
      ),
      body: new GestureDetector(
        child: new Hero(
            tag: 'imageHero',
            child: new Image.network("http://via.placeholder.com/350x350")),
        onTap: () {
          // todo: question khong hieu sao ham nay lai can (_) nhu nay, vi cac bai truoc thi ko co
          Navigator.push(context, new MaterialPageRoute(builder: (_) {
            return new DetailScreen();
          }));
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Detail screen"),
      ),
      body: new GestureDetector(
        child: new Hero(
            tag: "imageHero",
            child: new Image.network("http://via.placeholder.com/150x150")),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
