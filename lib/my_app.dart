import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _name = '';
  String _email = '';
  final nameEditCon = TextEditingController();
  final emailEditCon = TextEditingController();

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
                controller: nameEditCon,
                onChanged: (text) {
                  setState(() {
                    _name = text;
                  });
                },
                decoration: InputDecoration(
                    labelText: 'Input name',
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)))),
              ),
            ),
            Text(
              _name,
              style: TextStyle(fontSize: 20, color: Colors.redAccent),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                controller: emailEditCon,
                onChanged: (text) {
                  setState(() {
                    _email = text;
                  });
                },
                decoration: InputDecoration(
                    labelText: 'Input name',
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)))),
              ),
            ),
            Text(
              _email,
              style: TextStyle(fontSize: 20, color: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}
