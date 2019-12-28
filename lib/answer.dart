import 'package:flutter/material.dart';

/// **************************************************
///** Created by Fady Fouad on 29-Dec-19 at 00:17.***
///**************************************************/

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
