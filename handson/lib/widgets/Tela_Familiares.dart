import 'package:flutter/material.dart';

import 'Aba_Familiares/Categoria.dart';
import 'Aba_Familiares/Linha.dart';
import 'BotãoCancelar.dart';
import 'BotãoPlus.dart';
import 'BotãoProximo.dart';

class AbaFamilia extends StatelessWidget {
  const AbaFamilia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
            child: Center(
              child: Container(
                  height: 40,
                  width: 1250,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Adicionar Familiares',
                        style: TextStyle(
                          fontFamily: 'AGENCYR',
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        )),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5)))),
            ),
          ),
          Container(
            height: 550,
            width: 1250,
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Categoria(),
                  Linha(),
                  Linha(),
                  Linha(),
                  Linha(),
                  SizedBox(
                    height: 20,
                  ),
                  BotaoPlus(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BotaoCancelar(),
                      SizedBox(width: 10),
                      BotaoProximo(),
                    ],
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            ),
          ),
        ])));
  }
}
