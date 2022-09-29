import 'package:flutter/material.dart';
import 'questions.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  late final List<Map<String, Object>> questionList;
  late final int questionIndex;
  final Function answerAction;

  Quiz({required this.answerAction, required this.questionList, required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
            questions:questionList[questionIndex]["questionText"]?.toString() ?? ""),
        ...(questionList[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(selectHandler: ()=> answerAction(answer["score"]), answerText: answer["text"] as String);
        }).toList()
      ],
    );
  }
}