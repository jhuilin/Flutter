import 'package:flutter/material.dart';
import 'package:route_example/first_Page.dart';
import 'package:route_example/second_page.dart';
import 'package:route_example/third_page.dart';


class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings setting){
    
    final args = setting.arguments;

    switch(setting.name){
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case '/second':
        if(args is String){
          return MaterialPageRoute(
            builder: (_) => SecondPage(data: args,),
          );
        }
          return _errorRoute();
      case '/third' :
        return MaterialPageRoute(builder: (_) => ThirdPage(),);

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Error'),
          ),
          body: Center(
            child: Text('ERROR'),
          ),
        );
      }
    );
  }
}