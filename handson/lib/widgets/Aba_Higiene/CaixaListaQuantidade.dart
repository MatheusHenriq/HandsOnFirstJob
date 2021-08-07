import 'package:flutter/material.dart';

class CaixaListaQuantidade extends StatefulWidget {
  @override
  _CaixaListaQuantidadeState createState() => _CaixaListaQuantidadeState();
}

class _CaixaListaQuantidadeState extends State<CaixaListaQuantidade> {
  String title = 'DropDownButton';
  String? _quantVal;
  List _quant = [
    '01',
    '02',
    '03',
    '04',
    '05',
    '06',
    '07',
    '08',
    '09',
    '10',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        value: _quantVal,
        onChanged: (value) {
          setState(() {
            _quantVal = value as String?;
          });
        },
        items: _quant.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
