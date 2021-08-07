import 'package:flutter/material.dart';
import 'package:nome_aba/widgets/Aba_Higiene/Bot%C3%A3oPlus.dart';
import 'package:nome_aba/widgets/Aba_Higiene/Bot%C3%A3oSalvar.dart';
import 'package:nome_aba/widgets/Aba_Higiene/CaixaListaQuantidade.dart';
import 'package:nome_aba/widgets/Aba_Nome/Bot%C3%A3oCancelar.dart';

class AbaHigiene extends StatelessWidget {
  const AbaHigiene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Container(
                  width: 600,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Produtos de Higiene',
                      style: TextStyle(
                        fontFamily: 'AGENCYR',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5)),
                      color: Colors.blue),
                ),
                Container(
                  width: 600,
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 430,
                        height: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text('Cadastro De Produtos Higiênicos:',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontFamily: 'AGENCYR')),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 75),
                              child: Text('Nome do produto:',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'AGENCYR')),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 75),
                              child: Container(
                                width: 300,
                                height: 35,
                                child: TextField(
                                    decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                )),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 75),
                              child: Row(
                                children: [
                                  Text('Quantidade:',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily: 'AGENCYR')),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 50,
                                    height: 35,
                                    child: CaixaListaQuantidade(),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: BotaoPlus(),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.grey[300]),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BotaoCancelar(),
                          SizedBox(
                            width: 10,
                          ),
                          BotaoSalvar(),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                      color: Colors.white),
                )
              ])),
        ));
  }
}
