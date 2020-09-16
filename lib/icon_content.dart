import 'package:flutter/material.dart';
import 'constants.dart';

class CardIcon extends StatelessWidget {

  CardIcon({@required this.symbol, @required this.tag});

  final IconData symbol;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          symbol,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          '$tag',
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
