import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  String name;
  int age;
  MyApp({this.name, this.age});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _name = '';
  final nameEdittingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextField(
                    controller: nameEdittingController,
                    onChanged: (text) {
                      this.setState(() {
                        // when state change => build() reload widget
                        _name = text;
                      });
                    },
                    decoration: InputDecoration(
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(20))),
                        labelText: 'Input name'),
                  )),
              Text(
                _name,
                style: TextStyle(fontSize: 30, color: Colors.amber),
              )
            ],
          ),
        ),
      ),
    );
  }
}
