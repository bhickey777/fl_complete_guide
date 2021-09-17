//question.dart - custom text widget used in MyApp

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  //positional argument based constructor
  const Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        _questionText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 26, color: Colors.white),
      ),
    );
  }
}
