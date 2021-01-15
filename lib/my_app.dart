import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _name = '';
  String _tel = '';

  final textEditNameCon = TextEditingController();
  final textEditTelCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                controller: textEditNameCon,
                decoration: InputDecoration(
                    labelText: 'Your name',
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(20)))),
                onChanged: (text) {
                  this.setState(() {
                    _name = text;
                  });
                },
              ),
            ),
            Text(
              _name,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                controller: textEditTelCon,
                decoration: InputDecoration(
                    labelText: 'Your tel',
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(20)))),
                onChanged: (text) {
                  this.setState(() {
                    _tel = text;
                  });
                },
              ),
            ),
            Text(
              _tel,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
