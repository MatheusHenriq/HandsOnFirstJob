import 'package:flutter/material.dart';
import 'package:nome_aba/widgets/Aba_Nome/TextRef1.dart';
import 'package:nome_aba/widgets/Aba_Nome/TextRef2.dart';
import 'package:nome_aba/widgets/Aba_Nome/labelText1.dart';
import 'package:nome_aba/widgets/Aba_Nome/labelText2.dart';
import 'package:nome_aba/widgets/Bot%C3%A3oCancelar.dart';
import 'package:nome_aba/widgets/Bot%C3%A3oProximo.dart';

class AbaNome extends StatelessWidget {
  const AbaNome({Key? key}) : super(key: key);

// Widget: Uma Aba de prenchimento dos responsáveis das famílias.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                height: 50,
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Responsável',
                      style: TextStyle(
                        fontFamily: 'AGENCYR',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      )),
                ),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
            Container(
              height: 300,
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextRef1(
                      textoR: '',
                    ),
                  ),
                  TextField1(
                    caixa1: '',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextRef2(
                      texto2R: '',
                    ),
                  ),
                  TextField2(
                    caixa2: '',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BotaoCancelar(
                        cancelar: '',
                      ),
                      SizedBox(width: 10),
                      BotaoProximo(
                        proximo: '',
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular((5))),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
