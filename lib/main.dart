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
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  double age = 0.0;
  var selectedYear;
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: Duration(microseconds: 1500));
    animation = animationController;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  void _showPicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime(DateTime.now().year),
            firstDate: DateTime(1900),
            lastDate: DateTime.now())
        .then((DateTime value) {
      selectedYear = value.year;
      calculateAge();
    });
  }

  void calculateAge() {
    setState(() {
      age = (DateTime.now().year - selectedYear).toDouble();
      animation = Tween<double>(
        begin: animation.value,
        end: age,
      ).animate(CurvedAnimation(
          curve: Curves.fastOutSlowIn, parent: animationController));
    });
    animationController.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculate your age 😀"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineButton(
              child: Text(selectedYear != null
                  ? selectedYear.toString()
                  : "Select birt year"),
              borderSide: BorderSide(color: Colors.black, width: 2.0),
              color: Colors.white,
              onPressed:
                  _showPicker, // khong hieu tai sao o day showpicker phai goi nhu nay ma o phai them () phia sau nhu goi ham
            ),
            Padding(padding: EdgeInsets.all(20)),
            AnimatedBuilder(
                animation: animation,
                builder: (context, child) => new Text(
                      "Your age is ${animation.value.toStringAsFixed(0)}",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ))
          ],
        ),
      ),
    );
  }
}
