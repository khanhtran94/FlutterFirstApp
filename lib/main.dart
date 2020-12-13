import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
          child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("images/eog-icon.png"),
          )
        ],
      )),
    ),
  ));
}
