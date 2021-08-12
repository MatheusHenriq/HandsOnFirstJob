import 'package:flutter/material.dart';
import 'auxiliartitulo.dart';
import 'botões.dart';
import 'quantidade.dart';
import 'idade_recom.dart';

class Tela extends StatelessWidget {
  const Tela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Titulobrinquedo(),
              IdadeRec(),
              Quantidade(),
            ],
          ),
          padding: EdgeInsets.all(50.0),
          height: 400.0,
          width: 600.0,
          decoration: BoxDecoration(
              border: Border.all(width: 0),
              borderRadius: const BorderRadius.all(const Radius.circular(10)),
              color: Colors.grey[300]),
          margin: EdgeInsets.only(
            top: 150,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Botoes(),
      ],
    );
  }
}
