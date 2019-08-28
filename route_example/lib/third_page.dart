import 'package:flutter/material.dart';


class ThirdPage extends StatelessWidget {
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
              'Third page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('Go To SecondPage'),
              onPressed: (){
                Navigator.of(context).popAndPushNamed('/');
              },
            ),
          ],
        ),
      ),
    );
  }
}