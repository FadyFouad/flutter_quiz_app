import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String ans;
  final Function ansPressed;

  const Answer({Key key, this.ans, this.ansPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
//      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(ans),
        onPressed: ansPressed,
      ),
    );
  }
}
