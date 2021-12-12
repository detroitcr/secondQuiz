import 'package:flutter/material.dart';
import 'package:secondchance/result.dart';

import './quiz.dart';
import './result.dart';
// app starting point

void main() {
  runApp(MyApp());
}

//class MyApp extends StatelessWidget {
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// _MyAppState is private class underscore before the class name is syntax for private class
class _MyAppState extends State<MyApp> {
  // variable name questions who store question
  final _questions = const [
    // map is a pair of key and value
    {
      'questionText': 'What\'s your favorite color?',
      'answerText': [
        {'text': 'Blue', 'score': 100},
        {'text': 'Purple', 'score': 50},
        {'text': 'Red', 'score': 80},
        {'text': 'White', 'score': 70}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answerText': [
        {'text': 'Eagle', 'score': 100},
        {'text': 'Wolf', 'score': 50},
        {'text': 'Fox', 'score': 30},
        {'text': 'Lion', 'score': 40}
      ],
    },
    {
      'questionText': 'Who\'s your favourite actress?',
      'answerText': [
        {'text': 'Megan Fox', 'score': 80},
        {'text': 'Jennifer Aniston', 'score': 75},
        {'text': 'Deepika Padukone', 'score': 90},
        {'text': 'Katherine LAngford', 'score': 100}
      ],
    },
    {
      'questionText': 'Which\'s your favourite web series?',
      'answerText': [
        {'text': 'SuperNatural', 'score': 60},
        {'text': 'Arrow', 'score': 100},
        {'text': 'StrangerThings', 'score': 70},
        {'text': 'Elementary', 'score': 90}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0; // store total score

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // make a answerQuestion function for showing the question index
  void _answerQuestion(int score) {
    // var aBool = true;
    //     aBool = false;
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    //questionIndex + 1;
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more question');
    }
  }

  @override
  Widget build(BuildContext context) {
//     var dummy = ['zona'];
//     dummy.add('Vikas');
//     print(dummy);
// //    questions = []; this doesnot work if question is constant

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Quiz',
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(resultScore: _totalScore, resetQuiz: _resetQuiz),
      ),
    );
  }
}
