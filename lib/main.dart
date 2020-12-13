import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color textColor;
  bool checkBoxValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textColor = Colors.red;
    checkBoxValue = false;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("checkbox"),
        ),
        body: new Center(
          child: new Column(
            children: [
              new Text(
                  "some term and conditions that you may not wanna read and argee to in order to move to next step" +
                      "aa"),
              new Row(
                children: [
                  new Expanded(
                      child: new Text(
                    "Agree to our term ?",
                    style: new TextStyle(color: textColor),
                    textAlign: TextAlign.right,
                  )),
                  new Checkbox(
                      value: checkBoxValue,
                      onChanged: (bool checked) {
                        setState(() {
                          checkBoxValue = checked;
                          if (checked == true) {
                            textColor = Colors.green;
                          } else {
                            textColor = Colors.red;
                          }
                        });
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
