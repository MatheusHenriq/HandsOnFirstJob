import 'package:flutter/material.dart';
import 'package:handson/cadastrar_familias/fields/nascimento/born_field.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: BornField(), //CadastrarFamilias(),
      ),
    ),
  );
}
