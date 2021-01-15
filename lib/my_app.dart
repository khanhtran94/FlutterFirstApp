import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  final _nameEditCon = new TextEditingController();
  final _telEditCon = new TextEditingController();
  final GlobalKey<ScaffoldState> _globalKeyScaffold = new GlobalKey();

  String _name = '';
  int _tel = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Home app",
        home: Scaffold(
          key: _globalKeyScaffold,
          body: SafeArea(
            minimum: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: _nameEditCon,
                    decoration: InputDecoration(
                        labelText: 'input name',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(20)))),
                    onChanged: (text) {
                      _name = text;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: _telEditCon,
                    decoration: InputDecoration(
                        labelText: 'input name',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(20)))),
                    onChanged: (text) {
                      _tel = int.tryParse(text) ?? 0;
                    },
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    print('$_name -- $_tel');
                    _globalKeyScaffold.currentState.showSnackBar(SnackBar(
                      content: Text('$_name -- $_tel'),
                      duration: Duration(seconds: 5),
                    ));
                  },
                  child: Icon(
                    Icons.ac_unit_outlined,
                    size: 50,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
