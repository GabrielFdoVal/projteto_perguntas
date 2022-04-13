import 'package:flutter/material.dart';

class Awnser extends StatelessWidget {
  final String text;
  final void Function() _awnser;

  Awnser(this.text, this._awnser);

  Widget build(BuildContext build) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        child: Text(text),
        onPressed: _awnser,
      ),
    );
  }
}
