import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onpress;
  final IconData icon;
  RoundIconButton({this.icon, this.onpress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.expand(width: 45, height: 45),
      elevation: 6,
      disabledElevation: 6,
      onPressed: onpress,
      shape: CircleBorder(),
      fillColor: Colors.pink,
    );
  }
}
