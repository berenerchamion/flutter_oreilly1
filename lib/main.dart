import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        'Black',
        'Blue',
        'Red','Green','Yellow'
      ],},
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
    setState((){
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < questions.length){
      print('We have more questions...');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ), //End Column
      ), //End Scaffold
    ); //End MaterialApp
  }
}
