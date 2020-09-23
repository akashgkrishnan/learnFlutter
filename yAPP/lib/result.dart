import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result(this.score, this.reset);

  String get getScore {
    String resultText;
    if (this.score <= 8) {
      resultText = 'You are great';
    } else if (this.score <= 16) {
      resultText = 'you are fool';
    } else {
      resultText = 'Ok boy you are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Text(getScore,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center),
      ),
      FlatButton(
          child: Text('Restart', style: TextStyle(fontSize: 32)),
          onPressed: this.reset),
    ]);
  }
}
