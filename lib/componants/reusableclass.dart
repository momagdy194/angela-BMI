import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color coluer;
  final Widget Cardchild;
  ReusableCard({@required this.coluer, this.Cardchild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Cardchild,
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: coluer, borderRadius: BorderRadius.circular(10)),
    );
  }
}
