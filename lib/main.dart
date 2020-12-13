import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String homeAddress = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeAddress = "";
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Textfield"),
        ),
        body: new Column(
          children: [
            new Icon(
              Icons.home,
              size: 64,
              color: Colors.blue,
            ),
            new TextField(
              onChanged: (String newValue) {
                setState(() {
                  homeAddress = newValue;
                });
              },
              decoration: new InputDecoration(
                  hintText: "Enter your home address",
                  labelText: "Home address"),
            ),
            new Text(homeAddress)
          ],
        ),
      ),
    );
  }
}
