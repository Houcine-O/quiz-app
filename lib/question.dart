import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Question extends StatelessWidget {
  final String question;

  const Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Text(question);
  }
}
