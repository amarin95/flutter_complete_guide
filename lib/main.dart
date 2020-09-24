import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite movie?',
        'answers': ['Save private Ryan', 'Pulp Fiction', 'The Godfather', 'The Goonies'],
      },
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Yes', '7', 'Potatoe', 'C++'],
      },
      {
        'questionText': 'What\'s your favourite potatoe?',
        'answers': ['Potatoe', 'Potatoe', 'Potatoe', 'Yes, potatoe'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) { //Spread operator, each element is added to the children list. 
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
