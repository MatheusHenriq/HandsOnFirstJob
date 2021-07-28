import 'package:flutter/material.dart';

class Add_Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          child: Image.asset(
            'assets/images/back.png',
            alignment: Alignment.centerLeft,
          ),
          decoration: BoxDecoration(
              color: Colors.amber[50],
              border: Border.all(color: Colors.orange.shade900),
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          constraints: BoxConstraints.tightFor(width: 40, height: 40),
        ),
        onTap: () {});
  }
}
