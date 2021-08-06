import 'package:flutter/material.dart';
import 'package:handson/cadastrar_familias/fields/nascimento/born_field.dart';
import 'package:handson/cadastrar_familias/fields/necessidades/needs_field.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: NeedsField(), //BornField(),
      ),
    ),
  );
}
