import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("images/eog-icon.png"),
          ),
          Text(
            "DevTechie inc",
            style: TextStyle(
                fontFamily: 'Satisfy',
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Learning made easy",
            style: TextStyle(
                fontFamily: 'Satisfy',
                fontSize: 24,
                color: Colors.white,
                letterSpacing: 3,
                fontWeight: FontWeight.bold),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.ac_unit_sharp,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "0963192894",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Satisfy',
                        fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.email, color: Colors.orange),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "khanhtttas@gmail.com",
                    style: TextStyle(
                        color: Colors.orange.shade400,
                        fontFamily: 'Satisfy',
                        fontSize: 20),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    ),
  ));
}
