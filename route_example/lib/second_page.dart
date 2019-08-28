import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {

  final String data;

  SecondPage({Key key, @required this.data,}): super(key: key);

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
              'Second page',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              data,
              style: TextStyle(fontSize: 20),
            ),
            RaisedButton(
              child: Text('go to third page'),
              onPressed: (){
                Navigator.of(context).pushNamed('/third');
              },
            ),
          ],
        ),
      ),
    );
  }
}