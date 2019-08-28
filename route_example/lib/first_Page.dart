import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'First page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('Go To SecondPage'),
              onPressed: (){
                Navigator.of(context).pushNamed(
                  '/second',
                  arguments: 'there from the first page',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}