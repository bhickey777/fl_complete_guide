import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var questionsAndActions = [
      Text('What\'s your favorite color?'),
      RaisedButton(child: Text('Answer 1'), onPressed: null),
      RaisedButton(child: Text('Answer 2'), onPressed: null),
      RaisedButton(child: Text('Answer 3'), onPressed: null),
      Text('What\'s your favorite animal?'),
      RaisedButton(child: Text('Answer 1'), onPressed: null),
      RaisedButton(child: Text('Answer 2'), onPressed: null),
      RaisedButton(child: Text('Answer 3'), onPressed: null),
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Column(children: questionsAndActions),
    ));
  }
}
