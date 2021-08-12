import 'package:flutter/material.dart';
import 'package:segundo_teste/cadastrar_familias/fields/necessidades/needs_field.dart';

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
