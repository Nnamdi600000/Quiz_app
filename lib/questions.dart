import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questions;

  Questions({required this.questions});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Text(questions,
            style: const TextStyle(fontSize: 25), textAlign: TextAlign.center));
  }
}
