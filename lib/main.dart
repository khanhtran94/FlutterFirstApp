import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      backgroundColor: Colors.orange.shade300,
      appBar: new AppBar(
        title: new Text(
          "Dice game",
          style: TextStyle(color: Colors.blueAccent),
        ),
        backgroundColor: Colors.orange.shade50,
      ),
      body: DiceGame(),
    ),
  ));
}

class DiceGame extends StatefulWidget {
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int lDice = Random().nextInt(6) + 1;
  int rDice = Random().nextInt(6) + 1;

  void updateDice() {
    setState(() {
      lDice = Random().nextInt(6) + 1;
      rDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Image(
              image: AssetImage("images/dice$lDice.png"),
            ),
            onPressed: () {
              updateDice();
            },
          )),
          Expanded(
              child: FlatButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              updateDice();
            },
            child: Image(
              image: AssetImage("images/dice$rDice.png"),
            ),
          ))
        ],
      ),
    );
  }
}
