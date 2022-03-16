import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

@override
class PerguntaApp extends StatelessWidget {
  void answer() {
    print("Answered");
  }

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
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: answer,
            ),
            ElevatedButton(
              child: Text("Answer 2"),
              onPressed: answer,
            ),
            ElevatedButton(
              child: Text("Answer 3"),
              onPressed: answer,
            ),
          ],
        ),
      ),
    );
  }
}
