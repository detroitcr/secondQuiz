import 'package:flutter/material.dart';

import 'answers.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          // questions.elementAt(0), first method
          // second method // after the we wrap up questions in map with answers how can be accessing?
          // so we put the questionText in the list so question can access
          questions[questionIndex]['questionText'],
        ),
        // press the button and call the answerQuestion function
        // RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
        // we create a custom widget for button in answers.dart file so we can call the class
        // Now how we can select answer dynamically
        // We use Map method
        //... is separable operator which take whole list
        ...(questions[questionIndex]['answerText'] as List<Map<String, Object>>)
            .map(
              (answer) => Answers(
                  () => answerQuestion(answer['score']), answer['text']),
            )
            .toList()
      ],
    );
  }
}
