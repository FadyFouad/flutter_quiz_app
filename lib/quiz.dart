import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

/// **************************************************
///** Created by Fady Fouad on 29-Dec-19 at 00:16.***
///**************************************************/

class Quiz extends StatelessWidget {
  var questions;
  var qNum;
  Function ansPressed;

  Quiz({@required this.questions,
    @required this.qNum,
    @required this.ansPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Question(
          questionText: questions[qNum]['Q'],
        ),
        ...(questions[qNum]['A'] as List<String>).map((a) {
          return Answer(
            ans: a,
            ansPressed: ansPressed,
          );
        }).toList() //Answer
      ],
    ));
  }
}
