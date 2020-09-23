import 'package:flutter/material.dart';


class Answer extends StatelessWidget{
  final Function increaseQuestionIndex;
  final String answerText;
  Answer(this.increaseQuestionIndex, this.answerText);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        textColor: Colors.black,
        color: Colors.blue,
        child: Text(this.answerText),
        onPressed: this.increaseQuestionIndex,
      ),
    );
  }
}