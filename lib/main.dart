import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double xDirection = 0.0;
  double yDirection = 0.0;
  double zDirection = 0.0;
  Matrix4 baseTransform;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    baseTransform = new Matrix4.identity();
  }

  void handleSelection() {
    baseTransform.rotateX(xDirection / 180.0);
    baseTransform.rotateY(yDirection / 180.0);
    baseTransform.rotateZ(zDirection / 180.0);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("slider exm"),
        ),
        body: new Center(
          child: new Column(
            children: [
              new Text("Mobe slider to transform the card below"),
              new Padding(padding: const EdgeInsets.all(20.0)),
              new Transform(
                transform: baseTransform,
                child: new Card(
                  child: new Padding(padding: const EdgeInsets.all(20.0)),
                  color: Colors.orangeAccent,
                ),
              ),
              new Slider(
                  value: xDirection,
                  max: 180.0,
                  min: 0.0,
                  onChanged: (double value) {
                    setState(() {
                      xDirection = value;
                      handleSelection();
                    });
                  }),
              new Slider(
                  value: yDirection,
                  max: 180.0,
                  min: 0.0,
                  onChanged: (double value) {
                    setState(() {
                      yDirection = value;
                      handleSelection();
                    });
                  }),
              new Slider(
                  value: zDirection,
                  max: 180.0,
                  min: 0.0,
                  onChanged: (double value) {
                    setState(() {
                      zDirection = value;
                      handleSelection();
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
