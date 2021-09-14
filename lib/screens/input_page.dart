import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/icon_content.dart';
import '../constants.dart';
import 'results_page.dart';
import '../components/bottom_button.dart';
import '../components/round_icon_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

enum Gender {
  MALE,
  FEMALE,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 10;

  // Color maleCardColour = inactiveCardColor;
  // Color femaleCardColour = inactiveCardColor;

  //1 = male, 2 = female
  // void updateColor(int gender) {
  // //male card pressed
  // if(gender == 1){
  //   if(maleCardColour == inactiveCardColor){
  //     maleCardColour = activeCardColour;
  //     femaleCardColour = inactiveCardColor;
  //   }else{
  //     maleCardColour = inactiveCardColor;
  //   }
  // }
  //
  // //female card pressed
  // if(gender == 2){
  //   if(femaleCardColour == inactiveCardColor){
  //     femaleCardColour = activeCardColour;
  //     maleCardColour = inactiveCardColor;
  //   }else{
  //     femaleCardColour = inactiveCardColor;
  //   }
  // }
  // }

  // void updateColor(Gender selectedGender) {
  //   //male card pressed
  //   if(selectedGender == Gender.MALE){
  //     if(maleCardColour == inactiveCardColor){
  //       maleCardColour = activeCardColour;
  //       femaleCardColour = inactiveCardColor;
  //     }else{
  //       maleCardColour = inactiveCardColor;
  //     }
  //   }
  //
  //   //female card pressed
  //   if(selectedGender == Gender.FEMALE){
  //     if(femaleCardColour == inactiveCardColor){
  //       femaleCardColour = activeCardColour;
  //       maleCardColour = inactiveCardColor;
  //     }else{
  //       femaleCardColour = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      // body: Center(
      //   child: Text(
      //     'Body Text',
      //     // style: Theme.of(context).textTheme.bodyText1,
      //   ),
      // ),

      // body: Container(
      // margin: EdgeInsets.all(15.0),
      // decoration: BoxDecoration(
      //     color: Color(0xFF1D1E33),
      //     borderRadius: BorderRadius.circular(10.0)
      // ),
      //DELETE HEIGHT AND WIDTH AND USE EXPANDED WIDGET
      // height: 200.0,
      // width: 170.0,
      // ),

      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      // ),

      // floatingActionButton: Theme(
      //   data: ThemeData(accentColor: Colors.purple),
      //   child: FloatingActionButton(
      //     child: Icon(Icons.add),
      //   ),
      // ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  // child: GestureDetector(
                  //   onTap: () {
                  //     setState(() {
                  //       // updateColor(Gender.MALE);
                  //       selectedGender = Gender.MALE;
                  //     });
                  //   },
                  //   child: ReusableCard(
                  //     // colour: inactiveCardColor,
                  //     colour: selectedGender == Gender.MALE
                  //         ? activeCardColour
                  //         : inactiveCardColor,
                  //     cardChild: IconContent(
                  //       icon: FontAwesomeIcons.mars,
                  //       label: 'MALE',
                  //     ),
                  //   ),
                  // ),

                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                    // colour: inactiveCardColor,
                    colour: selectedGender == Gender.MALE
                        ? kActiveCardColour
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  // child: GestureDetector(
                  //   onTap: () {
                  //     setState(() {
                  //       // updateColor(Gender.FEMALE);
                  //       selectedGender = Gender.FEMALE;
                  //     });
                  //   },
                  //   child: ReusableCard(
                  //     // colour: inactiveCardColor,
                  //     colour: selectedGender == Gender.FEMALE
                  //         ? activeCardColour
                  //         : inactiveCardColor,
                  //
                  //     cardChild: IconContent(
                  //       icon: FontAwesomeIcons.venus,
                  //       label: 'FEMALE',
                  //     ),
                  //   ),
                  // ),

                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    // colour: inactiveCardColor,
                    colour: selectedGender == Gender.FEMALE
                        ? kActiveCardColour
                        : kInactiveCardColor,

                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            // child: Container(
            //   margin: EdgeInsets.all(15.0),
            //   decoration: BoxDecoration(
            //     color: Color(0xFF1D1E33),
            //     borderRadius: BorderRadius.circular(10.0),
            //   ),
            // ),
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        '180',
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTickMarkColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      // activeColor: Color(0XFFEB1555),
                      // inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  // child: Container(
                  //   margin: EdgeInsets.all(15.0),
                  //   decoration: BoxDecoration(
                  //     color: Color(0xFF1D1E33),
                  //     borderRadius: BorderRadius.circular(10.0),
                  //   ),
                  // ),
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // FloatingActionButton(
                            //   backgroundColor: Color(0xFF4C4F5E),
                            //   child: Icon(
                            //     Icons.add,
                            //     color: Colors.white,
                            //   ),
                            // ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            // FloatingActionButton(
                            //   backgroundColor: Color(0xFF4C4F5E),
                            //   child: Icon(
                            //     Icons.add,
                            //     color: Colors.white,
                            //   ),
                            // ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  // child: Container(
                  //   margin: EdgeInsets.all(15.0),
                  //   decoration: BoxDecoration(
                  //     color: Color(0xFF1D1E33),
                  //     borderRadius: BorderRadius.circular(10.0),
                  //   ),
                  // ),
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // FloatingActionButton(
                            //   backgroundColor: Color(0xFF4C4F5E),
                            //   child: Icon(
                            //     Icons.add,
                            //     color: Colors.white,
                            //   ),
                            // ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            // FloatingActionButton(
                            //   backgroundColor: Color(0xFF4C4F5E),
                            //   child: Icon(
                            //     Icons.add,
                            //     color: Colors.white,
                            //   ),
                            // ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => ResultPage()));
          //   },
          //   child: Container(
          //     child: Center(
          //       child: Text(
          //         'CALCULATE',
          //         style: kLargeButtonTextStyle,
          //       ),
          //     ),
          //     color: kBottomContainerColour,
          //     margin: EdgeInsets.only(top: 10.0),
          //     padding: EdgeInsets.only(bottom: 20.0),
          //     width: double.infinity,
          //     height: kBottomContainerHeight,
          //   ),
          // ),

          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(
                height: height,
                weight: weight,
              );

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
