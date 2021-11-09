import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase{
    var resultText="Quiz ended your score $resultScore";
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
child:
Column(children: [Text(resultPhrase,style:TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
       textAlign : TextAlign.center,
      ),
      // ignore: deprecated_member_use
    
      // ignore: deprecated_member_use
      FlatButton(
        child:Text('Restart Quiz'),
        onPressed: resetHandler,

      ),
],
),
    );
        
      
      
  }

}