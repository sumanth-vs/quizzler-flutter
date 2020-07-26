import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset('assets/congrats.jpg'),
        Text(
          'Well Done! You got out of 15 questions right',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        )
      ],
    );
  }
}
