import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  int _questionIndex = 0;
  var questions = [
    "How are you ?",
    "How were you ?",
    "How do you want to be ?"
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = (_questionIndex + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar title"),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text("this is an answer"),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text("this is another answer"),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text("this is the 3rd answer"),
          ),
        ]),
      ),
    );
  }
}
