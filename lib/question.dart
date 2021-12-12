import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// create a custom widget very important

class Question extends StatelessWidget {
  final String questionText;

  // create a Question constructor

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(25.0),
      child: Text(
        questionText,
        style: TextStyle(
          color: Colors.amber,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
