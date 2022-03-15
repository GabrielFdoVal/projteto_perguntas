import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final questions = [
      "What is your favorite color?",
      "What is your favorite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[0]),
            RaisedButton(
              child: Text("Resposta 1"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Resposta 2"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Resposta 3"),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
