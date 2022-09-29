import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyQuizApp());
}

//Note every widget is a dart class that has a build method.
class MyQuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyQuizAppState();
  }
}

class MyQuizAppState extends State<MyQuizApp> {
  final _questionsList = const [
    {
      "questionText": "What is the name of your country?",
      "answers": [
        {"text": "Nigeria", "score": 4},
        {"text": "Ghana", "score": 5},
        {"text": "Canada", "score": 9},
        {"text": "Uk", "score": 9}
      ],
    },
    {
      "questionText": "What do you love?",
      "answers": [
        {"text": "coding", "score": 10},
        {"text": "mobile development", "score": 9},
        {"text": "movies", "score": 7},
        {"text": "cars", "score": 9}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerAction(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScore += score;

    print(_questionIndex);

    if (_questionIndex < _questionsList.length) {
      print("We have more questions!");
    }
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: _questionIndex < _questionsList.length
          ? Quiz(
              answerAction: _answerAction,
              questionList: _questionsList,
              questionIndex: _questionIndex)
          : Result(_totalScore, _reset),
    ));
  }
}
