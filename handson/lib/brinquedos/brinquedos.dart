import 'package:flutter/material.dart';
import 'auxiliar.dart';

class Brinquedo extends StatelessWidget {
  const Brinquedo({Key? key}) : super(key: key);

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
            'Brinquedos',
            style: TextStyle(
              fontFamily: 'AGENCYR',
              fontSize: 35,
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
        body: Center(
          child: Tela(),
        ));
  }
}
