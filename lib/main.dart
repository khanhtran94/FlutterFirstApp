import 'package:flutter/material.dart';

void main() => runApp(new MyApp(
      TextInput: new Text("Hello from main"),
    ));

class MyApp extends StatefulWidget {
  final Widget TextInput;
  MyApp({this.TextInput});
  MyAppState createState() => new MyAppState();
  // This widget is the root of your application.

}

class MyAppState extends State<MyApp> {
  bool checkBoxValue = false;
  String actionText = "Default";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "MyAPP",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Hello word"),
          actions: [
            new IconButton(
                icon: new Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    actionText = "New Test";
                  });
                }),
            new IconButton(
                icon: new Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                    actionText = "Default";
                  });
                }),
          ],
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              widget.TextInput,
              new Text(actionText),
              new Checkbox(
                  value: checkBoxValue,
                  onChanged: (bool value) {
                    setState(() {
                      checkBoxValue = value;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
