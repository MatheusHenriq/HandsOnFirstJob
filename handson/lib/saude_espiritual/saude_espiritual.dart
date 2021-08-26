import 'package:flutter/material.dart';
import 'Checkcircle.dart';
import 'Botaocancel.dart';
import 'Botaoprox.dart';

class SaudeEspiritual extends StatelessWidget {
  const SaudeEspiritual({Key? key}) : super(key: key);

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
          'Saúde Espiritual',
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
      body: Column(
        children: [
          CheckCircle(),
          Container(
            margin: EdgeInsets.fromLTRB(320, 20, 0, 0),
            child: Row(
              children: [
                Botaocinza(),
                Botaoazul(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
