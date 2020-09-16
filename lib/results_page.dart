import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_page.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmi, @required this.result, @required this.interpretation});
  final String interpretation, bmi, result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Your Result',
              style: kResultPageHead,
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Center(child: Text(result, style: kResultTextStyle,)),
                    Text(bmi, style: kBMI,textAlign: TextAlign.center,),
                    Text(interpretation, style: TextStyle(fontSize: 22.0),textAlign: TextAlign.center)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
              },
              child: Container(
                child: Center(child: Text('RE-CALCULATE', style: kLargeLabelStyle)),
                color: kBottomBarColor,
                padding: EdgeInsets.only(bottom: 20.0),
                margin: EdgeInsets.only(top: 10.0),
                height: 80.0,
                width: double.infinity,
              ),
            )
          ],
        ));
  }
}
