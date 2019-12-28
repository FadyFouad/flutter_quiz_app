import 'package:flutter/material.dart';


/// **************************************************
///** Created by Fady Fouad on 29-Dec-19 at 00:17.***
///**************************************************/

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            "No More Questions.",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
