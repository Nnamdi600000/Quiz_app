// To parse this JSON data, do
//
//     final question = questionFromJson(jsonString);

import 'dart:convert';

Question questionFromJson(String str) => Question.fromJson(json.decode(str));

String questionToJson(Question data) => json.encode(data.toJson());

class Question {
  Question({
    required this.questionText,
    required this.answers,
  });

  String questionText;
  List<Answer> answers;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
    questionText: json["questionText"],
    answers: List<Answer>.from(json["answers"].map((x) => Answer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "questionText": questionText,
    "answers": List<dynamic>.from(answers.map((x) => x.toJson())),
  };
}

class Answer {
  Answer({
    required this.text,
    required this.score,
  });

  String text;
  int score;

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(
    text: json["text"],
    score: json["score"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "score": score,
  };
}
