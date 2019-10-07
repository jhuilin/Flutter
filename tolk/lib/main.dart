import 'package:flash_chat/clima/clima.dart';
import 'package:flash_chat/login_splash.dart';
import 'package:flash_chat/select.dart';
import 'package:flash_chat/todoey/todo.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: LoginSplash.id,
    routes: {
      LoginSplash.id: (context) => LoginSplash(),
      WelcomeScreen.id: (context) => WelcomeScreen(),
      LoginScreen.id: (context) => LoginScreen(),
      RegistrationScreen.id: (context) => RegistrationScreen(),
      SelectPage.id: (context) => SelectPage(),
      Todo.id: (context) => Todo(),
      Clima.id: (context) => Clima(),
      ChatScreen.id: (context) => ChatScreen(),
      },      
    );
  }
}
