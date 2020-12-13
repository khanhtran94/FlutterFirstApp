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
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.orange,
                  ),
                  title: Text(
                    "0963192894",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Satisfy',
                        fontSize: 20.0),
                  ),
                )),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.orange,
                  ),
                  title: Text(
                    "khanhtrantung@gmail.com",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Satisfy',
                        fontSize: 20.0),
                  ),
                )),
          ),
        ],
      )),
    ),
  ));
}
