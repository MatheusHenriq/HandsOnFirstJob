import 'package:flutter/material.dart';

enum Botoes { sim, nao, masculino, feminino }

class BotaoSN extends StatefulWidget {
  const BotaoSN({Key? key}) : super(key: key);

  @override
  State<BotaoSN> createState() => _BotaoSNState();
}

class _BotaoSNState extends State<BotaoSN> {
  Botoes? _character = Botoes.sim;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Sim'),
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
          title: const Text('Não'),
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
