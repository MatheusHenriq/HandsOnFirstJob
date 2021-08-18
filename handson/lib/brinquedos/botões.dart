import 'package:flutter/material.dart';
import 'botaocancel.dart';
import 'botaoprox.dart';

class Botoes extends StatelessWidget {
  const Botoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 630,
      ),
      child: Row(
        children: [
          Botaocinza(),
          Botaoazul(),
        ],
      ),
    );
  }
}
