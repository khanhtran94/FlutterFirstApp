import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final titile = "Returning data  example";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(title: titile, home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Returning data demo"),
      ),
      body: new Center(
        child: new SelectionButton(),
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new SelectionScreen()));

    Scaffold.of(context)
        .showSnackBar(new SnackBar(content: new Text("$result")));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: new Text("Make a selection"),
    );
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pick an option"),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Yep');
                  },
                  child: new Text("Yep"),
                )),
            new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Nope');
                  },
                  child: new Text("Nope"),
                ))
          ],
        ),
      ),
    );
  }
}
