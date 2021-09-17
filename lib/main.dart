import 'package:flutter/material.dart';

//local imports
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final double kButtonSize = 180;

  var _questionIndex = 0;
  var _colorsIndex = 0;

  var questions = ['What\'s your favorite color?', 'Your next favorite color?'];

  var _colors = [Colors.blue, Colors.red, Colors.orange];

  void _answerBlue() {
    setState(() {
      _colorsIndex = 0;
    });
    printChoice('blue');
  }

  void _answerRed() {
    setState(() {
      _colorsIndex = 1;
    });
    printChoice('red');
  }

  void _answerOrange() {
    setState(() {
      _colorsIndex = 2;
    });
    printChoice('orange');
  }

  void printChoice(String choice) {
    print('size of questions: ${questions.length}');
    if (_questionIndex + 1 >= questions.length) {
      print('I choose ' + choice + 'index: ${_questionIndex}');
      return;
    }

    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questionsAndActions = [
      Question(questions[_questionIndex]),
      Container(
        width: kButtonSize,
        margin: EdgeInsets.all(10),
        child: RaisedButton(child: Text('Blue'), onPressed: _answerBlue),
      ),
      Container(
        width: kButtonSize,
        margin: EdgeInsets.all(10),
        child: RaisedButton(child: Text('Red'), onPressed: _answerRed),
      ),
      Container(
        width: kButtonSize,
        margin: EdgeInsets.all(10),
        child: RaisedButton(child: Text('Orange'), onPressed: _answerOrange),
      )
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          width: double.infinity,
          child: Text(
            'Color Questions',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
      body: Column(children: questionsAndActions),
      backgroundColor: _colors[_colorsIndex],
    ));
  }
}
