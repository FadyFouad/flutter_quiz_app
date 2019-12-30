import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz.dart';
import 'package:flutter_quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int qNum = 0;
  var questions = [
    {
      'Q': "Question 1",
      'A': [
        "Answer 1.1",
        "Answer 1.2",
        "Answer 1.3",
      ]
    },
    {
      'Q': "Question 2",
      'A': [
        "Answer 2.1",
        "Answer 2.2",
        "Answer 2.3",
      ]
    },
    {
      'Q': "Question 3",
      'A': [
        "Answer 3.1",
        "Answer 3.2",
        "Answer 3.3",
      ]
    },
    {
      'Q': "Question 4",
      'A': [
        "Answer 4.1",
        "Answer 4.2",
        "Answer 4.3",
      ]
    },
    {
      'Q': "Question 5",
      'A': [
        "Answer 5.1",
        "Answer 5.2",
        "Answer 5.3",
        "Answer 5.4",
        "Answer 5.5",
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: qNum < questions.length
            ? Quiz(
            questions: questions,
            qNum: qNum,
            ansPressed: questionAnsPressed)
            : Result(restart),
      ),
    );
  }

  void questionAnsPressed() {
//    debugPrint("This is a questionAnsPressed()");
    setState(() {
      if (qNum < questions.length) {
        qNum++;
        debugPrint("This is question #$qNum");
      } else {
        debugPrint("No More Questions");
      }
    });
  }

  restart() {
    setState(() {
      qNum = 0;
    });
  }
}
