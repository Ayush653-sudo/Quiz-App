import 'package:flutter/material.dart';
import 'package:flutter_application_1/quiz.dart';

import './quiz.dart';
import './result.dart';
void main(){
runApp(MyApp());
}
// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  
    return _MyAppstate();
  }
}
class _MyAppstate extends State<MyApp>{
   static const _questions=[
   {
     'questionText': 'What\'s your Favorite color?',
     'answers':[{'text':'Black','score':10},
             {'text':'Red','score':5},
             {'text':'Green','score':3},
             {'text':'White','score':1},
             ],
   },
   {
     'questionText': 'What\'s your Favorite animal?',
     'answers':[{'text':'Dog','score':10},
             {'text':'Cat','score':5},
             {'text':'Kangroo','score':3},
             {'text':'Whale','score':1},
     ],
   },
   {
     'questionText': 'Who\'s your favorite instructor?',
     'answers':[
       {'text':'Ayush','score':10},
             {'text':'Arpit','score':5},
             {'text':'Ranjana','score':3},
             {'text':'Mukesh','score':1},

     ],
   },
 ];
  var _questionIndex=0;
  var _totalScore=0;
  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
   _totalScore=0;
    });
  }
  void _answerQuestion(int score){
    _totalScore=_totalScore+score;
    setState(() {
       _questionIndex=_questionIndex+1;
    });
    print(_questionIndex);
    if(_questionIndex<_questions.length){
      print('Wr have mmore question');
    }

  }
    
  @override
  Widget build(BuildContext context) {

  // ignore: unnecessary_statements

      
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('QUIZ'),
      ),
      body: _questionIndex< _questions.length? Quiz(answerQuestion:_answerQuestion,questionIndex:_questionIndex,questions:_questions)
      :Result(_totalScore,_resetQuiz),
    ),
    );
      
    
  }
}