import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeLeft(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
  void changeRight(){
  setState(() {
    rightDiceNumber = Random().nextInt(6) + 1;
  });
}

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,                //make it flexible
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: (){
                    changeLeft();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child:Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: (){
                    changeRight();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
              ),
            ),
          ],
      ),
    );
  }
}