//answer.dart
import 'package:flutter/material.dart';
import './global.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final AnswerQuestion answerCallback;
  final int answerScore;

  const Answer(this.answerText, this.answerScore, this.answerCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () => answerCallback(answerScore),
          child: Text(answerText),
          style: ElevatedButton.styleFrom(shape: StadiumBorder()),
        ));
  }
}
