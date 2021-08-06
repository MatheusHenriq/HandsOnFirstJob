<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'agua/scaffold.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: Agua()),
  );
}
=======
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
>>>>>>> 9f12ed52752cd35782397cd3574298dbe8457f5f
