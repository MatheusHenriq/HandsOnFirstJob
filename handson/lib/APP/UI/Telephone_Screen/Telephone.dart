import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/Contact_Texts.dart';
import 'package:handson/APP/UI/Telephone_Screen/Widgets/MyTextFormField.dart';

class Telephone extends StatelessWidget {
  Telephone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange[300],
          title: Text(
            'Telefone',
            style: TextStyle(fontFamily: 'Agency', fontSize: 40),
          ),
          actions: <Widget>[
            Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_right_alt,
                  color: Colors.orange[300],
                ),
                iconSize: 35,
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              children: <Widget>[
                Contact_Texts(
                  Contact_Number: 'Número 1',
                ),
                MyTextFormField(),
                Contact_Texts(
                  Contact_Number: 'Número 2',
                ),
                MyTextFormField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
