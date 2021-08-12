import 'package:flutter/material.dart';

class Categoria extends StatelessWidget {
  const Categoria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(width: 88),
          Text(
            'Nome',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(width: 58),
          Text(
            'Idade',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(width: 50),
          Text(
            'Sexo',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(width: 87),
          Text(
            'Trabalha',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(width: 75),
          Text(
            'Profissão',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(width: 57),
          Text(
            'Estuda',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(width: 100),
          Text(
            'Alfabetização',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(width: 53),
          Text(
            'Num.',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(width: 45),
          Text(
            'Evang.',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5), topRight: Radius.circular(5)),
      ),
    );
  }
}
