import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['resposta']
        : [];

    return Column(
      children: <Widget>[
        Question(perguntas[perguntaSelecionada]['question'].toString()),
        ...respostas.map((resp) {
          return Answer(
            resp['texto'].toString(),
            () => responder(int.parse(resp['ponto'].toString())),
          );
        }).toList()
      ],
    );
  }
}
