import 'package:flutter/material.dart';
import 'package:nome_aba/widgets/Aba_Familiares/Categoria.dart';

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
                  width: 1000,
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
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
          ),
          Container(
            height: 600,
            width: 1000,
            child: Padding(
              padding: const EdgeInsets.only(top: 25, right: 15, left: 15),
              child: Column(
                children: [
                  Container(
                    child: Categoria(),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
        ])));
  }
}
