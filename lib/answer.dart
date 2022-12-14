import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

   Answer({required this.selectHandler, required this.answerText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  RaisedButton(
        onPressed: selectHandler,
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(answerText),
      ),
    );
  }
}
