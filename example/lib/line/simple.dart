import 'package:fcharts/fcharts.dart';
import 'package:flutter/material.dart';

class SimpleLineChart extends StatelessWidget {
  // X value -> Y value
  static const myData = [
    ["A", "✔"],
    ["B", "❓"],
    ["C", "✖"],
    ["D", "❓"],
    ["E", "✖"],
    ["F", "✖"],
    ["G", "✔"],
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 3,
      child: LineChart(
        lines: [
          Line<List<String>, String, String>(
            data: myData,
            xFn: (datum) => datum[0],
            yFn: (datum) => datum[1],
          ),
        ],
        chartPadding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 30.0),
      ),
    );
  }
}
