import 'package:flutter/material.dart';
import 'package:projeto_perguntas/answer.dart';
import './question.dart';
import './answer.dart';
import './resultado.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  // ignore: non_constant_identifier_names
  int _selected_answer = 0;

  void _answer() {
    if (temPerguntaSelecionada) {
      setState(() {
        _selected_answer++;
      });
    }
  }

  final List<Map<String, Object>> _questions = [
    {
      'question': "What is your favorite color?",
      'resposta': ["Black", "Red", "Blue", "Yellow"],
    },
    {
      'question': "What is your favorite animal?",
      'resposta': ["Lion", "Elephant", "Parrot", "Snake"]
    },
    {
      'question': "What is your favorite food?",
      'resposta': ["Hamburguer", "Barbecue", "Pasta", "Japanese food"]
    }
  ];

  bool get temPerguntaSelecionada {
    return _selected_answer < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _questions[_selected_answer].cast()['resposta']
        : [];
    List<Widget> widget = respostas.map((t) => Answer(t, _answer)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz"),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: <Widget>[
                  Question(_questions[_selected_answer]['question'].toString()),
                  ...widget,
                ],
              )
            // ignore: prefer_const_constructors
            : Result("Parabéns"),
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
