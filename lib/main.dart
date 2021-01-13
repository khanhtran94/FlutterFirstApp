import 'package:flutter/material.dart';
import 'car.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final titile = "GridView example 123";
  List<int> numbers = [2, 3, 4];
  var car = new Car(name: 'merce', year: 2020);

  @override
  Widget build(BuildContext context) {
    car.handleEven = () {
      print("main class");
    };
    car.doSomething();
    // TODO: implement build
    return new Center(
      child: Text(
        '${car.toString()}',
        style: TextStyle(fontSize: 30),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
