import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(
      this.questionText); //State changes bcs is in the constructor and re-renders it.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //takes full width of the container
      margin: EdgeInsets.all(10), //device pixels
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
