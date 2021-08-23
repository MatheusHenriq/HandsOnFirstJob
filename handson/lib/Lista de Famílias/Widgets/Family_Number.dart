import 'package:flutter/material.dart';

class Family_Number extends StatelessWidget {
  const Family_Number({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.green[100],
            border: Border.all(color: Colors.green.shade900),
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle),
        constraints: BoxConstraints.tightFor(width: 50, height: 50),
        alignment: Alignment.center,
        child: Text('10'));
  }
}
