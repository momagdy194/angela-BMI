import 'package:flutter/material.dart';
import 'package:calculator/screen/Inputpage.dart';
import 'package:calculator/constans.dart';
import 'package:calculator/componants/reusableclass.dart';
import 'package:calculator/componants/boutom_bouton.dart';

void main() {
  MaterialApp(
    home: calculatorpage(),
    theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E30),
        accentColor: Colors.deepPurple,
        scaffoldBackgroundColor: Color(0xFF0A0E30),
        textTheme: TextTheme(body1: TextStyle(color: Color(0xFFffffff)))),
  );
}

class calculatorpage extends StatelessWidget {
  calculatorpage({this.bmiresult, this.interpretation, this.resulttext});

  final String bmiresult;
  final String resulttext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('BMI RESULt'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 3,
              ),
              Expanded(
                  child: Text(
                'THE RESULT',
                style: KResultstule,
                textAlign: TextAlign.center,
              )),
              Expanded(
                  flex: 5,
                  child: ReusableCard(
                    coluer: kactivcardColor,
                    Cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          resulttext.toLowerCase(),
                          style: Knormal,
                        ),
                        Text(
                          bmiresult,
                          style: KResultstulenum,
                        ),
                        Text(
                          interpretation,
                          style: Knormalbody,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Boutomboutom(
                calc: Text('RE-CALCULATE'),
                ONTap: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => Inputpage()));
                },
              )
            ],
          )),
    );
  }
}
