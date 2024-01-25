import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Answer extends ConsumerStatefulWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  ConsumerState<Answer> createState() => _AnswerState();
}

class _AnswerState extends ConsumerState<Answer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: widget.selectHandler,
          child: Text(
            widget.answerText,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
