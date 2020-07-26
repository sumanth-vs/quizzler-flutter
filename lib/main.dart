import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int score = 0;
  String message = "";
  List<Widget> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    if (score > 7) {
      message = 'CONGRATULATIONS!!';
    } else {
      message = 'Better Luck Next Time';
    }
    String question = "";
    // if (questionNumber < quizBrain.getLength()) {
    question = quizBrain.getQuestion();
    // } else {
    //   return Scaffold(
    //     backgroundColor: Colors.grey.shade900,
    //     body: SafeArea(
    //       child: Padding(
    //         padding: EdgeInsets.all(10.0),
    //         child: Center(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: <Widget>[
    //               Text(
    //                 'Your Score is $score out of 15!',
    //                 style: TextStyle(
    //                   color: Colors.white,
    //                   fontSize: 25.0,
    //                 ),
    //               ),
    //               Text(
    //                 message,
    //                 style: TextStyle(
    //                   color: Colors.white,
    //                   fontSize: 20.0,
    //                 ),
    //               ),
    //               FlatButton(
    //                   color: Colors.grey,
    //                   child: Text(
    //                     'Play Again',
    //                     style: TextStyle(color: Colors.white, fontSize: 20.0),
    //                   ),
    //                   onPressed: () {
    //                     QuizPage();
    //                   }),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   );
    // }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                question,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                setState(() {
                  if (quizBrain.getAnswer() == true) {
                    score++;
                    scoreKeeper.add(
                      Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );
                  } else {
                    scoreKeeper.add(
                      Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    );
                  }
                  quizBrain.nextQuestion();
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  if (quizBrain.getAnswer() == false) {
                    score++;
                    scoreKeeper.add(
                      Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );
                  } else {
                    scoreKeeper.add(
                      Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    );
                  }
                  quizBrain.nextQuestion();
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
