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

class DicePage extends StatelessWidget {
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
                  child: Image.asset('images/dice1.png'),
                  onPressed: () => Image.asset('images/dice2.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child:Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  child: Image.asset('images/dice1.png'),
                  onPressed: () =>null,
                  ),
              ),
            ),
          ],
      ),
    );
  }
}