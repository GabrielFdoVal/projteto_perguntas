import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  int _selected_answer = 0;

  void _answer() {
    setState(() {
      _selected_answer++;
    });
    print("Answered");
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      "What is your favorite color?",
      "What is your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz"),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[_selected_answer]),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: _answer,
            ),
            ElevatedButton(
              child: Text("Answer 2"),
              onPressed: _answer,
            ),
            ElevatedButton(
              child: Text("Answer 3"),
              onPressed: _answer,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
