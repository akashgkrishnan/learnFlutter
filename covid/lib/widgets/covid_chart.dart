import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CovidChartBar extends StatelessWidget {
  final List<double> covidCases;

  const CovidChartBar({Key key, this.covidCases}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'daily cases',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: BarChart(
              BarChartData(
                maxY: 16.0,
                barTouchData: BarTouchData(enabled: false),
                titlesData: FlTitlesData(show: true),
              ),
            ),
          )
        ],
      ),
    );
  }
}
