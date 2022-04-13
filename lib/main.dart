import 'package:flutter/material.dart';
import 'package:projeto_perguntas/awnser.dart';
import './question.dart';
import './awnser.dart';

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
            Question(questions[_selected_answer]),
            Awnser("Resposta 1", _answer),
            Awnser("Resposta 2", _answer),
            Awnser("Resposta 3", _answer),
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
