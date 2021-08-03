import 'package:flutter/material.dart';
import 'package:segundo_teste/qualidade.dart';

class Agua extends StatelessWidget {
  const Agua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xff1565c0),
                  Color(0xff6dd5fa),
                ]),
          ),
        ),
        title: Text(
          'Água',
          style: TextStyle(
            fontFamily: 'AGENCYR',
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Checkcircle(),
      ),
    );
  }
}
