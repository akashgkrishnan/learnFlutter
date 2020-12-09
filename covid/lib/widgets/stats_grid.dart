import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/covid_data.dart';

class StatsGrid extends StatefulWidget {
  @override
  _StatsGridState createState() => _StatsGridState();
}

class _StatsGridState extends State<StatsGrid> {
  bool _isInit = true;
  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<CovidProvider>(context).todaysData().then((value) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final CovidData data = Provider.of<CovidProvider>(context).data;
    return _isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Column(
              children: [
                Flexible(
                  child: Row(
                    children: [
                      _buildStatsCard('total cases', data.totalCases.toString(), Colors.orange),
                      _buildStatsCard('total deaths', data.deaths.toString(), Colors.red),
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      _buildStatsCard('recovered', data.recovered.toString(), Colors.green),
                      _buildStatsCard('active', data.activeCases.toString(), Colors.lightBlue),
                      _buildStatsCard('new deaths', data.deathsNew.toString(), Colors.purple),
                    ],
                  ),
                ),
              ],
            ),
          );
  }

  Expanded _buildStatsCard(String title, String count, MaterialColor color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              count,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
