import 'package:flutter/material.dart';
import 'package:nome_aba/widgets/Aba_Familiares/Botoes_MF.dart';
import 'package:nome_aba/widgets/Aba_Familiares/Botoes_SN.dart';
import 'package:nome_aba/widgets/Aba_Familiares/CaixaLista.dart';

class Linha extends StatelessWidget {
  const Linha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 43,
            child: TextField(
              decoration:
                  InputDecoration(labelText: '', border: OutlineInputBorder()),
            ),
          ),
          TextField(
            decoration:
                InputDecoration(labelText: '', border: OutlineInputBorder()),
          ),
          BotaoMF(),
          BotaoSN(),
          TextField(
            decoration:
                InputDecoration(labelText: '', border: OutlineInputBorder()),
          ),
          BotaoSN(),
          CaixaLista(),
          BotaoSN(),
        ],
      ),
    );
  }
}
