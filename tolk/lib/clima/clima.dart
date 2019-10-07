import 'package:flash_chat/clima/screens/loading_screen.dart';
import 'package:flutter/material.dart';

class Clima extends StatelessWidget {

  static String id = 'clima';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
