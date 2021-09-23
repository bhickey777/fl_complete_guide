import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String message;
  final int score;
  VoidCallback reset;

  Result({required this.reset, required this.score, required this.message});

  String getResultMessage() {
    if (score <= 8) {
      return "You are awesome and innocent";
    } else {
      return message + ' with a score of ' + '$score';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          getResultMessage(),
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        ElevatedButton(
          onPressed: resetQuestions,
          child: Text('Restart Quiz!'),
          style: ElevatedButton.styleFrom(shape: StadiumBorder()),
        )
      ]),
    );
  }

  void resetQuestions() => reset();
}
