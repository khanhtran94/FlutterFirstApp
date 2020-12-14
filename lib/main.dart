import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

final List<List<CircularStackEntry>> _quarterlyProfitPieData = [
  <CircularStackEntry>[
    new CircularStackEntry(<CircularSegmentEntry>[
      new CircularSegmentEntry(500.0, Colors.red[200], rankKey: "Q1"),
      new CircularSegmentEntry(1500.0, Colors.yellow[200], rankKey: "Q2"),
      new CircularSegmentEntry(200.0, Colors.blue[200], rankKey: "Q3"),
      new CircularSegmentEntry(1500.0, Colors.green[200], rankKey: "Q4"),
    ], rankKey: "Quarterly profit"),
  ],
  <CircularStackEntry>[
    new CircularStackEntry(<CircularSegmentEntry>[
      new CircularSegmentEntry(200.0, Colors.red[200], rankKey: "Q1"),
      new CircularSegmentEntry(2500.0, Colors.yellow[200], rankKey: "Q2"),
      new CircularSegmentEntry(100.0, Colors.blue[200], rankKey: "Q3"),
      new CircularSegmentEntry(1100.0, Colors.green[200], rankKey: "Q4"),
    ], rankKey: "Quarterly profit"),
  ],
  <CircularStackEntry>[
    new CircularStackEntry(<CircularSegmentEntry>[
      new CircularSegmentEntry(300.0, Colors.red[200], rankKey: "Q1"),
      new CircularSegmentEntry(1100.0, Colors.yellow[200], rankKey: "Q2"),
      new CircularSegmentEntry(400.0, Colors.blue[200], rankKey: "Q3"),
      new CircularSegmentEntry(1500.0, Colors.green[200], rankKey: "Q4"),
    ], rankKey: "Quarterly profit"),
  ],
  <CircularStackEntry>[
    new CircularStackEntry(<CircularSegmentEntry>[
      new CircularSegmentEntry(500.0, Colors.red[200], rankKey: "Q1"),
      new CircularSegmentEntry(500.0, Colors.yellow[200], rankKey: "Q2"),
      new CircularSegmentEntry(400.0, Colors.blue[200], rankKey: "Q3"),
      new CircularSegmentEntry(1500.0, Colors.green[200], rankKey: "Q4"),
    ], rankKey: "Quarterly profit"),
  ]
];

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      GlobalKey<AnimatedCircularChartState>();
  final _charSize = const Size(300.0, 300.0);
  int sampleIndex = 0;

  void _cycleSamples() {
    setState(() {
      sampleIndex++;
      List<CircularStackEntry> data = _quarterlyProfitPieData[sampleIndex % 3];
      _chartKey.currentState.updateData(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Char circle"),
      ),
      body: Center(
        child: AnimatedCircularChart(
          initialChartData: _quarterlyProfitPieData[0],
          key: _chartKey,
          size: _charSize,
          chartType: CircularChartType.Pie,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _cycleSamples,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
