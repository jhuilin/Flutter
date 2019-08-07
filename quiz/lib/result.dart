import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPhrase{
    return 'The score is: '+resultScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(color: Colors.green,fontSize: 20.0,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            
          ),
          FlatButton(
            child: Text('Restart'),
            textColor: Colors.green,
            onPressed: resetHandler,
            )
        ],
      ),
    );
  }
}