import 'package:flutter/material.dart';
import 'package:nome_aba/widgets/Aba_Familiares/Bot%C3%A3oFlag.dart';
import 'package:nome_aba/widgets/Aba_Familiares/Botoes_MF.dart';
import 'package:nome_aba/widgets/Aba_Familiares/Botoes_SN.dart';
import 'package:nome_aba/widgets/Aba_Familiares/CaixaListaAlfabetizacao.dart';

class Linha extends StatelessWidget {
  const Linha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          BotaoFlag(),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Container(
              width: 152,
              height: 43,
              child: TextField(
                decoration: InputDecoration(
                    labelText: '', border: OutlineInputBorder()),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 45,
            height: 43,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: '', border: OutlineInputBorder()),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(child: BotaoMF()),
          Expanded(child: BotaoSN()),
          Container(
            width: 120,
            height: 43,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: '', border: OutlineInputBorder()),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Expanded(child: BotaoSN()),
          Container(
              width: 185,
              height: 43,
              child: CaixaListaAlfabetizacao(),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white)),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 65,
            height: 43,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: '', border: OutlineInputBorder()),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Expanded(child: BotaoSN()),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.blueGrey[50],
      ),
    );
  }
}
