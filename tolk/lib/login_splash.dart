import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class LoginSplash extends StatefulWidget {

  static String id = 'login_splash';

  @override
  _LoginSplashState createState() => _LoginSplashState();
}

class _LoginSplashState extends State<LoginSplash> {

  @override
  void initState(){
    super.initState();
    Future.delayed(
      Duration(seconds: 1),(){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'images/logo.png',
            fit: BoxFit.cover,
            ),
        ],
      ),  
    );
  }
}