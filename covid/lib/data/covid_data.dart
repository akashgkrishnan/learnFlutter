import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CovidData {
  final int activeCases;
  final int recovered;
  final int deaths;
  final int totalCases;
  final int deathsNew;

  CovidData(
      {this.activeCases,
      this.recovered,
      this.deaths,
      this.totalCases,
      this.deathsNew});
}

class CovidProvider with ChangeNotifier {
  CovidData data;

  CovidData get newData {
    return this.data;
  }

  Future<void> todaysData() async {
    const url = 'https://covid-f8c65-default-rtdb.firebaseio.com/covid.json';

    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      print(extractedData);
      extractedData.forEach((key, value) {
        this.data = CovidData(
            activeCases: value['activeCases'],
            recovered: value['recovered'],
            deaths: value['deaths'],
            totalCases: value['totalCases'],
            deathsNew: value['deathsNew']);
      });
    } catch (error) {
      print(error);
      throw error;
    }
  }
}
