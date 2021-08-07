import 'package:flutter/material.dart';

class Categoria extends StatelessWidget {
  const Categoria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text('Nome'),
          Text('Idade'),
          Text('Sexo'),
          Text('Trabalha'),
          Text('Profissão'),
          Text('Estuda'),
          Text('Alfabetização'),
          Text('Numeração'),
          Text('Evang.'),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
}
