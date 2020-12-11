import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = "Fade in image";
    // TODO: implement build
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Stack(
          children: <Widget>[
            new Center(
              child: new CircularProgressIndicator(),
            ),
            new Center(
              child: new FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image:
                      "https://icons.iconarchive.com/icons/diversity-avatars/avatars/256/batman-icon.png"),
            )
          ],
        ),
      ),
    );
  }
}
