//answer.dart
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback answerCallback;

  const Answer(this.answerText, this.answerCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: answerCallback,
          child: Text(answerText),
          style: ElevatedButton.styleFrom(shape: StadiumBorder()),
        ));
  }
}
