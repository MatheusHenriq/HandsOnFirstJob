import 'package:flutter/material.dart';
import 'Conteudo.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(
        left: 10,
        top: 20,
        right: 30,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[350],
      ),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 30,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10,
        ),
        children: [
          Conteudo(),
          Conteudo(),
          Conteudo(),
          Conteudo(),
          Conteudo(),
          Conteudo(),
          Conteudo(),
          Conteudo(),
          Conteudo(),
          Conteudo(),
          Conteudo(),
          Conteudo(),
          Conteudo(),
          Conteudo(),
          Conteudo(),
        ],
      ),
    );
  }
}
