import 'package:flutter/material.dart';

class Contact_Texts extends StatelessWidget {
  final String Contact_Number;
  Contact_Texts({this.Contact_Number = 'Número 1', Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          Contact_Number,
          style: TextStyle(
              color: Colors.orange[300],
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
