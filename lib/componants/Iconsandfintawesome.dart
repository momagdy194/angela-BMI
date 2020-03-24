import 'package:flutter/material.dart';

class Fontawesomename extends StatelessWidget {
  Fontawesomename({this.icon, this.Colere, this.sex});
  final IconData icon;
  final Color Colere;
  final String sex;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colere,
          size: 50,
        ),
        Text(
          '$sex',
          style: TextStyle(color: Colors.blueGrey),
        )
      ],
    );
  }
}
