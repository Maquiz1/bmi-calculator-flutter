import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {

  IconContent({this.icon,this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          // FontAwesomeIcons.mars,
          icon,
          size: 80.0,
        ),

        SizedBox(
          height: 10.0,
        ),

        Text(
          // 'MALEs',
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}