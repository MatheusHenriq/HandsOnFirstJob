import 'package:flutter/material.dart';
import 'package:nome_aba/widgets/Aba_Familiares/CaixaListaAlfabetizacao.dart';

class Linha extends StatelessWidget {
  const Linha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
        TextField(
          decoration:
              InputDecoration(labelText: '', border: OutlineInputBorder()),
        ),
        CaixaListaAlfabetizacao(),
      ],
    );
  }
}
