import 'package:first_app/contact.dart';
import 'package:flutter/material.dart';
import 'package:first_app/contact.dart';

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _nameEditCon = new TextEditingController();
  final _telEditCon = new TextEditingController();
  final GlobalKey<ScaffoldState> _globalKeyScaffold = new GlobalKey();
  Contact _contact = new Contact();
  List<Contact> _contactList = List();

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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
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
                ButtonTheme(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _contact.name = _name;
                        _contact.tel = _tel;
                        _contactList.add(_contact);
                        _contact = new Contact();
                        _name = '';
                        _tel = 0;
                      });
                    },
                    child: Icon(
                      Icons.ac_unit_outlined,
                      size: 50,
                    ),
                  ),
                ),
                Column(
                    children: _contactList.map((e) {
                  return ListTile(
                    leading: Icon(Icons.info),
                    title: Text(e.name),
                    subtitle: Text(e.tel.toString()),
                  );
                }).toList())
              ],
            ),
          ),
        ));
  }
}
