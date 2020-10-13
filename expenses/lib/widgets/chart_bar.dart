import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double amount;
  final double percentSpent;

  ChartBar(this.label, this.amount, this.percentSpent);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 20,
        child: FittedBox(
          child: Text('\$${amount.toStringAsFixed(0)}'),),
      ),
      SizedBox(
        height: 4,
      ),
      Container(
        height: 60,
        width: 10,
        child: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              color: Color.fromRGBO(220, 220, 220, 1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          FractionallySizedBox(
            heightFactor: percentSpent,
            child: Container(
                decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(10),
            )),
          ),
        ]),
      ),
      SizedBox(height: 5),
      Text(label),
    ]);
  }
}
