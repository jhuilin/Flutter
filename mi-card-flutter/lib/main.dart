import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.orange,
                backgroundImage: AssetImage('images/candy.png'),
              ),
              Text(
                'Baby',
                style: 
                  TextStyle(
                    fontFamily: 'Playball',
                    fontSize: 35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
              Text(
                'Flutter Learner',
                style:
                  TextStyle(
                    fontFamily: 'Rye',
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
              ),
              SizedBox(
                height: 10.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                    size: 30.0,
                    ),
                  title: Text(
                    '+123456789',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Playball',
                      fontSize: 25.0,
                      ),
                    ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                    size: 30.0,
                    ),
                  title: Text(
                    'jianhui@flutter.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Playball',
                      fontSize: 25.0,
                      ),
                    ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
