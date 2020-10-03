import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 6},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Yellow', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Zebra', 'score': 3},
        {'text': 'Snake', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorite beer?',
      'answers': [
        {'text': 'Troeg\'s Perpetual IPA', 'score': 10},
        {'text': 'Jai Alai IPA', 'score': 10},
        {'text': 'Budweiser', 'score': 10},
        {'text': 'Guinness', 'score': 10},
      ],
    },
  ];

  void _answerQuestion(int score) {
    
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more questions...');
    } else {
      print('No more questions please.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('House of Beor Asks...'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(),
      ), //End Scaffold
    ); //End MaterialApp
  }
}
