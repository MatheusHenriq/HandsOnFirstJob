import 'package:flutter/material.dart';

class CaixaLista extends StatefulWidget {
  @override
  _CaixaListaState createState() => _CaixaListaState();
}

class _CaixaListaState extends State<CaixaLista> {
  String title = 'DropDownButton';
  String? _calcadoVal;
  List _calcado = [
    '1 ou 13',
    '2 ou 14',
    '3 ou 15',
    '4 ou 16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
    '32',
    '33',
    '34',
    '35',
    '36',
    '37',
    '38',
    '39',
    '40',
    '41',
    '42',
    '43',
    '44',
    '45'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        //padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.grey,
        )),
        child: Center(
          child: DropdownButton(
            value: _calcadoVal,
            onChanged: (value) {
              setState(() {
                _calcadoVal = value as String?;
              });
            },
            items: _calcado.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
