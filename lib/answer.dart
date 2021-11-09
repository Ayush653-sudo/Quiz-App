import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
final VoidCallback selectHandler;
final String answerText;
Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,
    // ignore: deprecated_member_use
    child:RaisedButton(
      color: Colors.blue,
      child: Text(answerText),
      onPressed: selectHandler,
    ),
      
    );
  }
}