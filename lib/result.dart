import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;

  Result(this.result);

  String get resultString {
    String resultText;

    print(result);

    if (result <= 10) {
      resultText = 'You are awesome great choices!';
    } else if (result <= 18) {
      resultText = 'Not sure I grok those responses!';
    } else if (result <= 25) {
      resultText = 'That is a wacky bunch of answers!';
    } else {
      resultText = 'Yikes...';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultString,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ), //texxt
          FlatButton(
            child: Text("Restart Quiz!"),
          ), //button
        ],
      ), //column
    );
  }
}
