import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Web image",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("web image"),
        ),
        body: new Image.network(
            "https://media.istockphoto.com/vectors/startup-icon-vector-id1074164928?k=6&m=1074164928&s=612x612&w=0&h=dD2gAKmO5MNG-eOh2WE34ZMoLSpF0j_YSYvTFKl-FfA="),
      ),
    );
  }
}
