import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
