import 'package:flutter/material.dart';

enum Botoes { sim, nao, masculino, feminino }

class BotaoMF extends StatefulWidget {
  const BotaoMF({Key? key}) : super(key: key);

  @override
  State<BotaoMF> createState() => _BotaoMFState();
}

class _BotaoMFState extends State<BotaoMF> {
  Botoes? _character = Botoes.sim;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text(
            'Masculino',
            style: TextStyle(fontSize: 15),
          ),
          leading: Radio<Botoes>(
            value: Botoes.sim,
            groupValue: _character,
            onChanged: (Botoes? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text(
            'Feminino',
            style: TextStyle(fontSize: 15),
          ),
          leading: Radio<Botoes>(
            value: Botoes.nao,
            groupValue: _character,
            onChanged: (Botoes? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
