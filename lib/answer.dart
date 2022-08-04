import 'dart:math';
import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final VoidCallback selectAnswer;
  final String answerText;

  Answer(this.selectAnswer, this.answerText);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  late Color _bgColor;

  @override
  void initState() {
    const availableColors = [
      Colors.pinkAccent,
      Colors.yellow,
      Colors.deepPurpleAccent,
      Colors.lightGreenAccent,
      Colors.cyan,
      Colors.indigoAccent,
    ];
    _bgColor = availableColors[Random().nextInt(6)];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: SizedBox(
        height: 10,
        child: FloatingActionButton(
          backgroundColor: _bgColor,
          onPressed: widget.selectAnswer,
          child: Text(
            widget.answerText,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
