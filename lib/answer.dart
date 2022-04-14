import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() answer;

  Answer(this.text, this.answer);

  Widget build(BuildContext build) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        child: Text(text),
        onPressed: answer,
      ),
    );
  }
}
