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

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Blue', 'Red', 'Green', 'Yellow'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        'Dog',
        'Cat',
        'Zebra',
        'Snake',
      ],
    },
    {
      'questionText': 'What\'s your favorite beer?',
      'answers': [
        'Troeg\'s Perpetual IPA',
        'Jai Alai IPA',
        'Budweiser',
        'Guinness',
      ],
    },
  ];

  void _answerQuestion() {
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
