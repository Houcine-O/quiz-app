import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {
  int questionIndex = 0;
  var questions = [
    "How are you ?",
    "How were you ?",
    "How do you want to be ?"
  ];

  void answerQuestion() {
    setState(() {
      questionIndex = (questionIndex + 1) % 3;
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
          Text(questions[questionIndex]),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text("this is an answer"),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text("this is another answer"),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text("this is the 3rd answer"),
          ),
        ]),
      ),
    );
  }
}
