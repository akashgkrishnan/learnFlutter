import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
              this.questionText,
              style : TextStyle(fontSize: 28,),
              textAlign: TextAlign.center
      ),
    );
  }
}