import 'package:flutter/material.dart';
import 'package:calculator/constans.dart';

class Boutomboutom extends StatelessWidget {
  final Text calc;
  final Function ONTap;
  Boutomboutom({this.calc, this.ONTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ONTap,
      child: Container(
        child: Center(child: calc),
        width: double.infinity,
        height: kbottoncontainerHeight,
        color: kbottoncontainerColor,
      ),
    );
  }
}
