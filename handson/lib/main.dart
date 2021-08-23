import 'package:flutter/material.dart';
import 'package:segundo_teste/Lista%20de%20Fam%C3%ADlias/Bottom_List.dart';
import 'package:segundo_teste/cadastrar_familias/fields/necessidades/needs_field.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Bottom_List(), //BornField(),
      ),
    ),
  );
}
