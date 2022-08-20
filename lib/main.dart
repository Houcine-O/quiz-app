import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

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
  var _questionIndex = 0;
  var _totalScore = 0;
  static const _questionsAndAnswers = [
    {
      'question':
          "Who is the mother of the Prophet - may God bless him and grant him peace -?",
      'answers': [
        {'text': "Halimah al-Sa'diyah", 'score': 0},
        {'text': "Amina bint Wahb", 'score': 1},
        {'text': "Halah bint Wuhayb", 'score': 0}
      ],
    },
    {
      'question':
          "How many Ramadan fasted the Prophet - may God bless him and grant him peace -?",
      'answers': [
        {'text': "5", 'score': 0},
        {'text': "7", 'score': 0},
        {'text': "9", 'score': 1}
      ],
    },
    {
      'question':
          "Who was the nurse of the Prophet - may God bless him and grant him peace -?",
      'answers': [
        {'text': "Amina bint Wahb then Halimah al-Sa'diyah", 'score': 0},
        {'text': "Halimah al-Sa'diyah then Thuwaybah", 'score': 0},
        {'text': "Thuwaybah then Halimah al-Sa'diyah", 'score': 1}
      ],
    },
    {
      'question':
          "What was the first mosque built by the Prophet - may God bless him and grant him peace - in Medina?",
      'answers': [
        {'text': "Masjid Quba", 'score': 1},
        {'text': "Masjid Al Qiblatayn", 'score': 0},
        {'text': "Al-Masjid an-Nabawi", 'score': 0}
      ],
    },
    {
      'question':
          "How many battles did the Prophet - may God bless him and grant him peace - fought?",
      'answers': [
        {'text': "9", 'score': 1},
        {'text': "11", 'score': 0},
        {'text': "27", 'score': 0}
      ],
    },
    {
      'question':
          "How many battles did the Prophet - may God bless him and grant him peace - perform Hajj?",
      'answers': [
        {'text': "4", 'score': 0},
        {'text': "1", 'score': 1},
        {'text': "3", 'score': 0}
      ],
    },
    {
      'question':
          "How many times is the Prophet Muhammad - may God bless him and grant him peace - mentioned in the Holy Quran?",
      'answers': [
        {'text': "6", 'score': 0},
        {'text': "4", 'score': 1},
        {'text': "1", 'score': 0}
      ],
    },
    {
      'question':
          "What was the last battle that the Prophet - may God bless him and grant him peace - leaded?",
      'answers': [
        {'text': "Battle of Khandaq", 'score': 0},
        {'text': "Battle of Tabuk", 'score': 1},
        {'text': "Battle of Hunain", 'score': 0}
      ],
    },
    {
      'question':
          "How many children did the prophet - may God bless him and grant him peace - had",
      'answers': [
        {'text': "4", 'score': 0},
        {'text': "5", 'score': 0},
        {'text': "7", 'score': 1}
      ],
    },
    {
      'question':
          "What was the work of the Prophet - may God bless him and grant him peace - in his youth?",
      'answers': [
        {'text': "Trade", 'score': 1},
        {'text': "Sheepherding", 'score': 0},
        {'text': "poetry", 'score': 0}
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
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
            : Result(_totalScore),
      ),
    );
  }
}
