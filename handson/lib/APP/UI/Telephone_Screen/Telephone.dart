import 'dart:ui';

import 'package:flutter/material.dart';
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
            style: TextStyle(fontFamily: 'AGENCYB', fontSize: 30),
          ),
          actions: <Widget>[
            Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              margin: EdgeInsets.symmetric(horizontal: 10),
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
          child: Column(
            children: <Widget>[
              Text(
                'Contato Nº1',
                style: TextStyle(
                  color: Colors.orange[300],
                ),
              ),
              MyTextFormField(),
              Text(
                'Contato Nº2',
                style: TextStyle(
                  color: Colors.orange[300],
                ),
              ),
              MyTextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
