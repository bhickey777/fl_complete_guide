import 'package:flutter/material.dart';

//local imports
import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

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
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Eagle', 'score': 1},
        {'text': 'Fish', 'score': 7},
        {'text': 'Bear', 'score': 13},
        {'text': 'Lion', 'score': 44}
      ]
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': [
        {'text': 'Final Destination', 'score': 10},
        {'text': 'Resident Evil', 'score': 20},
        {'text': 'Outlander', 'score': 30},
        {'text': 'Scrooge', 'score': 7},
      ]
    }
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });

    print("my total score: {_totalScore}");
  }

  void printQuestion(String question) {
    print('I am on question: ' + question);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          width: double.infinity,
          child: const Text(
            'Color Questions',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
      body: (_questionIndex < _questions.length)
          ? Quiz(
              questions: _questions,
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex)
          : Result(
              reset: _resetQuiz,
              score: _totalScore,
              message: 'You have completed all the questions'),
      backgroundColor: Colors.black54,
    ));
  }
}
