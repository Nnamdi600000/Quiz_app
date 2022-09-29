import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  late final int score;
  final VoidCallback reset;

  Result(this.score, this.reset);

  String get resultPhase {
    String resultText;
    if (score >= 18) {
      resultText = "We made it!";
    } else if (score == 10) {
      resultText = "You are strange!";
    } else {
      resultText = "You need to work on your choosing skills";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhase,
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          FlatButton(
              onPressed: reset,
              textColor: Colors.blue,
              child: const Text("Reset!"))
        ],
      ),
    );
  }
}
