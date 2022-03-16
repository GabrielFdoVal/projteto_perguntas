import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  int selected_answer = 0;

  void answer() {
    setState(() {
      selected_answer++;
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
            Text(questions[selected_answer]),
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

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
