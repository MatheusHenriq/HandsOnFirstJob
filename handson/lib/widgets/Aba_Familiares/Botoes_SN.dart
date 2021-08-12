import 'package:flutter/material.dart';

class BotaoSN extends StatefulWidget {
  const BotaoSN({Key? key}) : super(key: key);

  @override
  State<BotaoSN> createState() => _BotaoSNState();
}

class _BotaoSNState extends State<BotaoSN> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RadioListTile(
            value: 1,
            groupValue: _value,
            onChanged: (val) {
              setState(() {
                _value = 1;
              });
            },
            activeColor: Colors.green,
            title: Text(
              'Sim',
              style: TextStyle(fontSize: 15),
            )),
        RadioListTile(
            value: 2,
            groupValue: _value,
            onChanged: (val) {
              setState(() {
                _value = 2;
              });
            },
            activeColor: Colors.red,
            title: Text(
              'Não',
              style: TextStyle(fontSize: 15),
            )),
      ],
    );
  }
}
