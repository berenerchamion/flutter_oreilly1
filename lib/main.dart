import 'package:flutter/material.dart';

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
  void _answerQuestion() {
    setState((){
      _questionIndex = _questionIndex + 1;
    });
    print('Question answered..');
  }

  @override
  Widget build(BuildContext context) {
    var questions = <String>[
      "What's your favorite color?",
      "What's your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer One'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer Two'),
              onPressed: () => print('Button Two pressed'),
            ),
            RaisedButton(
              child: Text('Answer Three'),
              onPressed: () {
                print('Answer 3 chosen.');
              },
            ),
          ],
        ), //End Column
      ), //End Scaffold
    ); //End MaterialApp
  }
}
