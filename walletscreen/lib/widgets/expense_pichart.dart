import 'package:flutter/material.dart';
import './pichart_section.dart';
import '../data.dart';

class ExpensePieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            'Expenses',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expenses
                      .map(
                        (value) => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor:
                                    pieColors[expenses.indexOf(value)],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                value['name'],
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: PieChartSection(),
            ),
          ],
        ),
      ],
    );
  }
}
