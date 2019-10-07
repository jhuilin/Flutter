import 'package:flash_chat/clima/clima.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/todoey/todo.dart';
import 'package:flutter/material.dart';

class SelectPage extends StatefulWidget {
  
  static String id = 'select';
  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
              child: ClipRRect(
                borderRadius:
                BorderRadius.circular(40.0),
                child: Container(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
                    },
                    child: Image.asset('images/chat.png'),

                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 6.0),
              child: ClipRRect(
              borderRadius: 
                BorderRadius.circular(40.0),
                child: Container(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Todo()));
                    },
                    child: Image.asset('images/task.png',),
                  ),
              ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 6.0),
              child: ClipRRect(
              borderRadius: 
                BorderRadius.circular(40.0),
                child: Container(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Clima()));
                    },
                    child: Image.asset('images/weather.png'),
                  ),
              ),
              ),
            ),
          ),
        ],
      ),  
    );
  }
}