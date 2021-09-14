import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../screens/input_page.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild,this.onPress});

  final Color colour; //Keyword Final make property immutable
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {

    // return Container(
    //   child: cardChild,
    //   margin: EdgeInsets.all(15.0),
    //   decoration: BoxDecoration(
    //     color: activeCardColour,
    //     borderRadius: BorderRadius.circular(10.0),
    //   ),
    // );

    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: kActiveCardColour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}