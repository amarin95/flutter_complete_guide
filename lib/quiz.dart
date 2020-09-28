import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({@required this.questions, @required this.answerQuestion, @required this.questionIndex});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          //Spread operator, each element is added to the children list.
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
