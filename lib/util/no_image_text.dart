import 'package:flutter/material.dart';

class NoImageText extends StatelessWidget {
  String text;

  NoImageText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 23,
        color: Colors.grey[400],
      ),
    );
  }
}
