import 'package:bmi_calculator/constans.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  final Function onTap;
  final String buttomTitle;

  BottomButton({@required this.onTap,@required this.buttomTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttomTitle,
            style: largeButtonTextStyle,
            ),
          ),
          color: bottomContainerColor,
          margin: EdgeInsets.only(top:10.0),
          padding: EdgeInsets.only(bottom: 15.0),
          width: double.infinity,
          height: bottomContainerHeight,
      ),
    );
  }
}