import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  final String question;

  const Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 100, bottom: 25),
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
