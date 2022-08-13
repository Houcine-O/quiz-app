import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar title"),
        ),
        body: Column(children: [
          Text("this is a question"),
          ElevatedButton(
            onPressed: null,
            child: Text("this is an answer"),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text("this is another answer"),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text("this is the 3rd answer"),
          ),
        ]),
      ),
    );
  }
}
