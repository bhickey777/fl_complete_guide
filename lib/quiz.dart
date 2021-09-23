import 'package:flutter/material.dart';

import './global.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  AnswerQuestion answerQuestion;
  int questionIndex;
  List<Map<String, Object>> questions;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]['questionText'] as String,
      ),
      // the use of ... is a convention to spread out a list into its individual components
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            answer['text'] as String, answer['score'] as int, answerQuestion);
      }).toList()
    ]);
  }
}
