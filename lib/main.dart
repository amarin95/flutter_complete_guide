import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite movie?',
      'answers': [
        {'text': 'Save private Ryan', 'score': 10},
        {'text': 'The Goonies', 'score': 1},
        {'text': 'Pulp Fiction', 'score': 3},
        {'text': 'The Godfather', 'score': 7}
      ],
    },
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Yes', 'score': 3},
        {'text': '7', 'score': 7},
        {'text': 'Car', 'score': 14},
        {'text': 'Golondrina Europea', 'score': 24}
      ],
    },
    {
      'questionText': 'What\'s your favourite potatoe?',
      'answers': [
        {'text': 'Potatoe', 'score': 10},
        {'text': 'Potatoe?', 'score': 7},
        {'text': 'Potatoe!', 'score': 5},
        {'text': 'Potatoe!!!!!', 'score': 18}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
