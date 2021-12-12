import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result({this.resultScore, this.resetQuiz});
  // getter method
  String get resultPhrase {
    String resultText;
    if (resultScore > 350) {
      resultText = 'You are awesome';
    } else if (resultScore <= 350) {
      resultText = 'You did it';
    } else {
      resultText = 'Welcome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
                color: Colors.red, fontSize: 60, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text(
              'Restart the quiz!',
              style: TextStyle(
                  color: Colors.amberAccent, fontWeight: FontWeight.bold),
            ),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
