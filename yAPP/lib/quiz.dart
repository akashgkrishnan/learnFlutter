import 'package:flutter/material.dart';


import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final question;
  final int questionIndex;
  final Function increaseQuestionIndex;

  Quiz({
    @required this.questionIndex, 
    @required this.increaseQuestionIndex, 
    @required this.question
    });

  @override
  Widget build(BuildContext context){
    return Column( children:
        [
          Question(question[questionIndex]['question']),
          ...(question[questionIndex]['answers'] as List<Map<String, Object>>).map((answer){
            return Answer(() => increaseQuestionIndex(answer['score']), answer['text']);
          }),
        ]
        );
  }
}