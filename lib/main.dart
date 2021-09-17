import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var colorsIndex = 0;

  var questions = [
    'What\'s your favorite color?',
    'What\'s your next favorite color?'
  ];

  var _colors = [Colors.blue, Colors.red, Colors.orange];

  void answerBlue() {
    setState(() {
      colorsIndex = 0;
    });
    printChoice('blue');
  }

  void answerRed() {
    setState(() {
      colorsIndex = 1;
    });
    printChoice('red');
  }

  void answerOrange() {
    setState(() {
      colorsIndex = 2;
    });
    printChoice('orange');
  }

  void printChoice(String choice) {
    print('size of questions: ${questions.length}');
    setState(() {
      if (questionIndex + 1 >= questions.length) return;
      questionIndex++;
    });
    print('I choose ' + choice + 'index: ${questionIndex}');
  }

  @override
  Widget build(BuildContext context) {
    var questionsAndActions = [
      Text(questions[questionIndex]),
      RaisedButton(child: Text('Blue'), onPressed: answerBlue),
      RaisedButton(child: Text('Red'), onPressed: answerRed),
      RaisedButton(child: Text('Orange'), onPressed: answerOrange),
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Column(children: questionsAndActions),
      backgroundColor: _colors[colorsIndex],
    ));
  }
}
