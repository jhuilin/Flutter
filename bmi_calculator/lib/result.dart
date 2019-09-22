import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constans.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final String bimResult;
  final String resiltText;
  final String interpretation;
  Result({this.bimResult,this.resiltText,this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',style: numberLabelStyle,),
            ),
          ),
          Expanded(
            flex: 5,
            child:  ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resiltText,
                    style: resultTextStyle,
                  ),
                  Text(
                    bimResult,
                    style: bmiTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: bodyTextStyle,
                  ),
                ],
                
              ),
            ),
          ),
          BottomButton(
            buttomTitle: "Re-Calculate",
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
      
    );
  }
}