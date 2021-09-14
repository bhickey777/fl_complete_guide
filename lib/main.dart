import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      home: const Text('Hello Doug!'),
    );
    return Center(child: materialApp);
  }
}
