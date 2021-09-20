import 'package:flutter/material.dart';

//local imports
import './question.dart';
import './answer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final double kButtonSize = 180;

  var _questionIndex = 0;

  var questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Orange']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Eagle', 'Fish', 'Bear', 'Lion']
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': [
        'Final Destination',
        'Resident Evil',
        'Outlander',
        'HomeComing'
      ]
    }
  ];

  void _answerQuestion() {
    if (_questionIndex + 1 >= questions.length) return;
    printQuestion(questions[_questionIndex]['questionText'] as String);
    setState(() {
      _questionIndex++;
    });
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
      // the use of ... is a convention to spread out a list into its individual components
      body: Column(children: [
        Question(
          questions[_questionIndex]['questionText'] as String,
        ),
        ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answer, _answerQuestion);
        }).toList()
      ]),
      backgroundColor: Colors.black54,
    ));
  }
}
