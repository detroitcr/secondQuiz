import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

// constructor so we can use in main.dart answer button
  Answers(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.tealAccent,
          child: Text(answerText),
          onPressed: selectHandler),
    );
  }
}
