import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int _resultScore;
  final VoidCallback resetHandler;
  String? get getText {
    String? text;
    if (_resultScore == 10) {
      text = "Very Good, that's a 10 on 10. Continue to seek more knowledge";
    } else if (_resultScore < 10) {
      text =
          "That's average, no body is born knowing. Continue to seek more knowledge";
    } else if (_resultScore < 5) {
      text = "That's Below average, you shall learn more and redo the quiz";
    }
    return text;
  }

  Result(this._resultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            getText as String,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetHandler, child: Text("reset the quiz"))
        ],
      ),
    );
  }
}
