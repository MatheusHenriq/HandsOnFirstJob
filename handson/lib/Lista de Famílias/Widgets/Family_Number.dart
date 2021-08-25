import 'package:flutter/material.dart';

class Family_Number extends StatelessWidget {
  const Family_Number({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.green[100],
            border: Border.all(color: Colors.green.shade900),
            shape: BoxShape.rectangle),
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 3),
        child: Text('10'));
  }
}
