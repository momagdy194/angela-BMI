import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calculator/componants/Iconsandfintawesome.dart';
import 'package:calculator/componants/reusableclass.dart';
import 'package:calculator/constans.dart';
import 'package:calculator/screen/calculatepage.dart';
import 'package:calculator/componants/RoundIconButton.dart';
import 'package:calculator/componants/boutom_bouton.dart';
import 'package:calculator/componants/calculate-brain.dart';

enum gender { male, female }

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Color malecoluer = kinactivcardColor;
  Color femalecoluer = kinactivcardColor;
  int haight = 180;
  int weight = 60;
  int age = 25;

//1=male /elase =female
  void Updatecoluer({gender selectgender}) {
//    if (selectgender == gender.male) {
//      if (malecoluer == activcardColor) {
//        malecoluer = inactivcardColor;
//        femalecoluer = activcardColor;
//      } else {
//        malecoluer = activcardColor;
//        femalecoluer = inactivcardColor;
//      }
//    }
//    if (selectgender == gender.female) {
//      if (femalecoluer == activcardColor) {
//        femalecoluer = inactivcardColor;
//        malecoluer = activcardColor;
//      } else {
//        femalecoluer = activcardColor;
//        malecoluer = inactivcardColor;
//      }
//    } thats equal tha coad if the dowen//
    //thats equal tha coad of the dowen
    selectgender == gender.male
        ? malecoluer = kactivcardColor
        : malecoluer = kinactivcardColor;
    selectgender == gender.female
        ? femalecoluer = kactivcardColor
        : femalecoluer = kinactivcardColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Caluclator BMI'),
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print('the femail Gesturedetector');
                        setState(() {
                          Updatecoluer(selectgender: gender.female);
                        });
                      },
                      child: new ReusableCard(
                        coluer: femalecoluer,
                        Cardchild: new Fontawesomename(
                          Colere: Colors.pink,
                          icon: FontAwesomeIcons.venus,
                          sex: 'female',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Updatecoluer(selectgender: gender.male);
                        });
                        print('the male Gesturedetector');
                      },
                      child: ReusableCard(
                          coluer: malecoluer,
                          Cardchild: Fontawesomename(
                            sex: 'male',
                            Colere: Colors.blue,
                            icon: FontAwesomeIcons.mars,
                          )),
                    ),
                  )
                ],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                        coluer: kactivcardColor,
                        Cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('HEIGHT', style: kconstantstyle),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  haight.toString(),
                                  style: Kconstnumberstyle,
                                ),
                                Text(
                                  'cm',
                                  style: kconstantstyle,
                                )
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  thumbColor: Colors.pink,
                                  overlayColor: Colors.pink[100],
                                  activeTrackColor: Colors.white,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 11)),
                              child: Slider(
                                value: haight.toDouble(),
                                min: 120,
                                max: 220,
                                onChanged: (double newval) {
                                  setState(() {
                                    haight = newval.round();
                                  });
                                },
                              ),
                            )
                          ],
                        )),
                  )
                ],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      coluer: kactivcardColor,
                      Cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kconstantstyle,
                          ),
                          Text(
                            weight.toString(),
                            style: Kconstnumberstyle,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: RoundIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onpress: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: RoundIconButton(
                                    icon: FontAwesomeIcons.plus,
                                    onpress: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      coluer: kactivcardColor,
                      Cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kconstantstyle,
                          ),
                          Text(
                            age.toString(),
                            style: Kconstnumberstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                  child: RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              )),
                              Expanded(
                                  child: RoundIconButton(
                                onpress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ))
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
              new Boutomboutom(
                calc: Text('CALCULATE'),
                ONTap: () {
                  calcbring calc = calcbring(height: haight, weight: weight);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => calculatorpage(
                                bmiresult: calc.calcBMI(),
                                interpretation: calc.getInterpretatiom(),
                                resulttext: calc.getresult(),
                              )));
                },
              )
            ]),
      ),
    );
  }
}
