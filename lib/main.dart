import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:quiz/quiz.dart';
import 'providers/qalist_provider.dart';
import './result.dart';

void main() => runApp(const ProviderScope(child: QuizApp()));

class QuizApp extends ConsumerStatefulWidget {
  const QuizApp({super.key});

  @override
  ConsumerState<QuizApp> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends ConsumerState<QuizApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  var colorSet = '';
  String isCorrect = '';

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questionsAndAnswers = ref.read(qaprovider);
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
          ),
        ),
        body: _questionIndex < questionsAndAnswers.length
            ? Quiz(questionsAndAnswers, _answerQuestion, _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
