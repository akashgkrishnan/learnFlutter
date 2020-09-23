import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
      return _MyAppState();
  }
}


class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  final _question = const [
        {
          'question': 'What\'s Your Fav Color?',
          'answers': [
            {'text' : 'Red', 'score': 10},
            {'text': 'Blue', 'score': 5}, 
            {'text': 'Green', 'score': 2},
            {'text': 'Yellow', 'score': 1}
            ]
        },
        {
          'question': 'What\'s Your Fav SuperHero?',
          'answers': [
            {'text' : 'Thor', 'score': 10},
            {'text': 'Hulk', 'score': 5}, 
            {'text': 'Ironman', 'score': 2},
            {'text': 'batman', 'score': 1}
            ]
        },
        {
          'question': 'What\'s Your Fav Color?',
          'answers': [
            {'text' : 'Red', 'score': 10},
            {'text': 'Blue', 'score': 5}, 
            {'text': 'Green', 'score': 2},
            {'text': 'Yellow', 'score': 1}
            ]
        },
        {
          'question': 'What\'s Your Fav SuperHero?',
          'answers': [
            {'text' : 'Thor', 'score': 10},
            {'text': 'Hulk', 'score': 5}, 
            {'text': 'Ironman', 'score': 2},
            {'text': 'batman', 'score': 1}
            ]
        }
      ];


    void _resetIndexAndScore(){
      setState(() {
       _questionIndex = 0;
      _totalScore = 0;
      });
    }

    void _increaseQuestionIndex(int score) {
      _totalScore += score;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      
    }
  @override
  Widget build(BuildContext context) {

    
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title: Text('New App Title'),),
        body: (_questionIndex < _question.length) ? 
        Quiz(
          questionIndex :_questionIndex, 
          increaseQuestionIndex :_increaseQuestionIndex, 
          question :_question)
          : Result(_totalScore, _resetIndexAndScore),
      )
    );

  }
}