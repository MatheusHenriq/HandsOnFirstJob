import 'package:flutter/material.dart';

class Categoria extends StatelessWidget {
  const Categoria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 50,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text('Nome'),
            ),
            Expanded(
              child: Text('Idade'),
            ),
            Expanded(
              child: Text('Sexo'),
            ),
            Expanded(
              child: Text('Trabalha'),
            ),
            Expanded(
              child: Text('Profissão'),
            ),
            Expanded(
              child: Text('Estuda'),
            ),
            Expanded(
              child: Text('N° de Calçado e Vestuário'),
            ),
            Expanded(
              child: Text('Participa da Evangilização'),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
}
