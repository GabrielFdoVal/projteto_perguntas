import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  // ignore: non_constant_identifier_names
  int _selected_answer = 0;
  int _pontuacaoTotal = 0;

  void _answer(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _selected_answer++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  final List<Map<String, Object>> _questions = [
    {
      'question': "What is your favorite color?",
      'resposta': [
        {"texto": "Black", "ponto": 10},
        {"texto": "Red", "ponto": 8},
        {"texto": "Blue", "ponto": 6},
        {"texto": "Green", "ponto": 4},
      ],
    },
    {
      'question': "What is your favorite animal?",
      'resposta': [
        {"texto": "Lion", "ponto": 10},
        {"texto": "Elephant", "ponto": 8},
        {"texto": "Parrot", "ponto": 6},
        {"texto": "Snake", "ponto": 4},
      ]
    },
    {
      'question': "What is your favorite food?",
      'resposta': [
        {"texto": "Hamburguer", "ponto": 10},
        {"texto": "Barbecue", "ponto": 8},
        {"texto": "Pasta", "ponto": 6},
        {"texto": "Japanese food", "ponto": 4},
      ]
    }
  ];

  bool get temPerguntaSelecionada {
    return _selected_answer < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz"),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _questions,
                perguntaSelecionada: _selected_answer,
                responder: _answer,
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
