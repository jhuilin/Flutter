import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [       //unmodify
    {
      'QuestionText': 'what\`s your favorite color?',
      'Answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 1},
        ],
    },
    {
      'QuestionText': 'what\`s your favorite beverage?',
      'Answers': [
        {'text': 'Coke', 'score': 5},
        {'text': 'Sprite', 'score': 11},
        {'text': 'Tea', 'score': 14},
        {'text': 'water', 'score': 1},
      ],
    },
    {
      'QuestionText': 'what\`s your favorite course?',
      'Answers': [
        {'text': 'Math', 'score': 5},
        {'text': 'English', 'score': 11},
        {'text': 'Chemistry', 'score': 14},
        {'text': 'Physic', 'score': 1},
      ],
    },
  ];
  void _answerQuestion(int score){
    _totalScore += score;
    setState(() {
        _questionIndex = _questionIndex + 1;
    });
    if(_questionIndex < _questions.length)
      print("we have more questions");
    else
      print("no more questions");
  }
  void _reset(){
        setState(() {
         _totalScore = 0;
        _questionIndex = 0;
    });
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(home : Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('hello'),
      ),
      body: _questionIndex < _questions.length 
      ? Quiz(
        answerQuestions: _answerQuestion, 
        questionIndex: _questionIndex, 
        questions: _questions,
        )
        :Result(_totalScore,_reset),
      ),
    );
  }
}