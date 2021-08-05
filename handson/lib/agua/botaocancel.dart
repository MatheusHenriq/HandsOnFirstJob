import 'package:flutter/material.dart';

//apenas o botão Cancelar

class Botaocinza extends StatelessWidget {
  const Botaocinza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10.0,
        ),
        padding: EdgeInsets.all(8.0),
        height: 40.0,
        width: 70.0,
        decoration: BoxDecoration(
            border: Border.all(width: 0),
            borderRadius: const BorderRadius.all(const Radius.circular(10)),
            color: Colors.grey[400]),
        child: Text(
          'Cancelar',
          style: TextStyle(
            fontFamily: 'AGENCYR',
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
