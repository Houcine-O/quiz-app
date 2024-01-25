import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  const Question(this.question, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(25), boxShadow: [
          const BoxShadow(
            color: Color.fromARGB(255, 153, 151, 151),
            blurRadius: 20.0,
            spreadRadius: 1.0,
          ), //BoxShadow
          BoxShadow(
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
        ]),
        margin: const EdgeInsets.only(bottom: 100, top: 100),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Center(
          child: Text(
            question,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ),
    );
  }
}
