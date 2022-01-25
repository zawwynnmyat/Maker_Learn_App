import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
          child: Text(answerText),
          elevation: 2.0,
          minWidth: MediaQuery.of(context).size.width-12,
          color: Colors.purple,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          onPressed: selectHandler,

      ),
    ); //Container
  }
}
