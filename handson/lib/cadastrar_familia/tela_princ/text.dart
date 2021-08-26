import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final String? text;
  const Texts({this.text, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text!,
          style: TextStyle(
            fontFamily: 'AGENCYR' ,
            fontSize: 25,
            fontWeight: FontWeight.w800
          ),
        )
      ],
      
    );
  }
}