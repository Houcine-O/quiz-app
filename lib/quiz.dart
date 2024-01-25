import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz/providers/qalist_provider.dart';

import './answer.dart';
import './question.dart';

class Quiz extends ConsumerStatefulWidget {
  final List<Map<String, Object>> questionsAndAnswers;
  final Function answerQuestion;
  final int questionIndex;

  const Quiz(this.questionsAndAnswers, this.answerQuestion, this.questionIndex,
      {super.key});

  @override
  ConsumerState<Quiz> createState() => _QuizState();
}

class _QuizState extends ConsumerState<Quiz> {
  @override
  Widget build(BuildContext context) {
    final questionsAndAnswers = ref.read(qaprovider);
    return Padding(
      padding: EdgeInsets.only(bottom: 100),
      child: Column(children: [
        Flexible(
            flex: 1,
            child: Question(questionsAndAnswers[widget.questionIndex]
                ["question"] as String)),
        ...(questionsAndAnswers[widget.questionIndex]["answers"]
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => widget.answerQuestion(answer['score']),
              answer['text'] as String);
        }).toList(),
      ]),
    );
  }
}
