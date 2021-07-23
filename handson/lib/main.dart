import 'package:flutter/material.dart';
import 'package:nome_aba/widgets/TextRef.dart';
import 'package:nome_aba/widgets/bot%C3%A3oCancelar.dart';
import 'package:nome_aba/widgets/bot%C3%A3oPr%C3%B3ximo.dart';
import 'package:nome_aba/widgets/labelText1.dart';
import 'package:nome_aba/widgets/labelText2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  margin:
                      EdgeInsets.only(top: 50, bottom: 0, left: 25, right: 25),
                  height: 50,
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Responsável',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'AGENCYB.TTF',
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        )),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
              Container(
                margin: EdgeInsets.only(top: 0, left: 25, right: 25),
                height: 360,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextRef(
                      textoR: 'Nome do Responsável',
                    ),
                    TextField1(
                      caixa1: '',
                    ),
                    Text(
                      'CPF:',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    TextField2(
                      caixa2: '',
                    ),
                    BotaoCancelar(
                      cancelar: '',
                    ),
                    BotaoProximo(
                      proximo: '',
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular((5))),
                ),
              ),
            ]),
          ),
        ));
  }
}
