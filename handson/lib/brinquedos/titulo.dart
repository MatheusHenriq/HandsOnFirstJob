import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  const Titulo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Cadastro de Brinquedos:",
        style: TextStyle(
          fontFamily: 'AGENCYR',
          fontSize: 35,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
