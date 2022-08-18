import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionsAndAnswers;
  final VoidCallback answerQuestion;
  final int questionIndex;

  Quiz(this.questionsAndAnswers, this.answerQuestion, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questionsAndAnswers[questionIndex]["question"] as String),
      ...(questionsAndAnswers[questionIndex]["answers"] as List<String>)
          .map((answer) {
        return Answer(answerQuestion, answer);
      }).toList(),
    ]);
  }
}
