import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  int _questionIndex = 0;
  static const _questionsAndAnswers = [
    {
      'question': "What's your favourite drink",
      'answers': ["beer", "coffee", "water"],
    },
    {
      'question': "What's the best way to start the day?",
      'answers': ["take a shower", "cup of tea", "cup of coffee"],
    },
    {
      'question': "What place from the below would you most enjoy",
      'answers': ["home", "paris", "disneyland"],
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar title"),
          backgroundColor: Color(0xff097969),
        ),
        body: _questionIndex < _questionsAndAnswers.length
            ? Quiz(_questionsAndAnswers, _answerQuestion, _questionIndex)
            : Result(),
      ),
    );
  }
}
