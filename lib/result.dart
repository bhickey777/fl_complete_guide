import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String message;

  Result({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(message,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, color: Colors.white)));
  }
}
