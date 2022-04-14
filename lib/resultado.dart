import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Result(this.pontuacao, this.quandoReiniciarQuestionario);

  String get frasePontuacao {
    if (pontuacao < 8) {
      return "Parabéns";
    } else if (pontuacao < 12) {
      return "Você é bom";
    } else if (pontuacao < 16) {
      return "Impressionante";
    } else {
      return "Nível Jedi";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            frasePontuacao,
            style: TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          child: Text(
            "Reiniciar?",
            style: TextStyle(fontSize: 28),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
          ),
          onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}
