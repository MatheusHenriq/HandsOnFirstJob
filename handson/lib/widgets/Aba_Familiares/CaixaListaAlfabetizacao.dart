import 'package:flutter/material.dart';

class CaixaListaAlfabetizacao extends StatefulWidget {
  @override
  _CaixaListaAlfabetizacaoState createState() =>
      _CaixaListaAlfabetizacaoState();
}

class _CaixaListaAlfabetizacaoState extends State<CaixaListaAlfabetizacao> {
  String title = 'DropDownButton';
  String? _alfabetizacaoVal;
  List _alfabetizacao = [
    'Ens. Fund. Incompleto',
    'Ens. Fund. Completo',
    'Ens. Méd. Incompleto',
    'Ens. Méd. Completo',
    'Ens. Sup. Incompleto',
    'Ens. Sup. Completo',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.grey,
      )),
      child: Center(
        child: DropdownButton(
          value: _alfabetizacaoVal,
          onChanged: (value) {
            setState(() {
              _alfabetizacaoVal = value as String?;
            });
          },
          items: _alfabetizacao.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
