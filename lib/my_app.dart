import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final _contentController = new TextEditingController();
  final _priceController = new TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String _content = '';
  double _price = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home app",
      home: Scaffold(
          key: _scaffoldKey,
          body: SafeArea(
              minimum: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: TextField(
                      controller: _contentController,
                      decoration: InputDecoration(
                          labelText: 'Input content',
                          border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(20)))),
                      onChanged: (text) {
                        _content = text;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: TextField(
                      controller: _priceController,
                      decoration: InputDecoration(
                          labelText: 'Input content',
                          border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(20)))),
                      onChanged: (text) {
                        _price = double.tryParse(text) ?? 0;
                      },
                    ),
                  ),
                  FlatButton(
                      onPressed: () {
                        print('$_content -- $_price');
                        _scaffoldKey.currentState.showSnackBar(SnackBar(
                          content: Text('$_content -- $_price'),
                          duration: Duration(seconds: 5),
                        ));
                      },
                      textColor: Colors.red,
                      child: Icon(
                        Icons.add,
                        size: 50,
                      )),
                ],
              ))),
    );
  }
}
