//import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:handson/cadastrar_familias/fields/nascimento/born_field.dart';

class Button extends StatelessWidget {
  final String botaoNome;
  final IconData? botaoIcone;
  final void Function() onTap;
  final bool? degrade;
  final bool? sombra;
  const Button(
      {Key? key,
      required this.botaoNome,
      this.botaoIcone,
      required this.onTap,
      this.degrade = false,
      this.sombra = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 115,
        height: 27,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.7),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(3),
            ),
            Icon(
              botaoIcone,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              botaoNome,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
