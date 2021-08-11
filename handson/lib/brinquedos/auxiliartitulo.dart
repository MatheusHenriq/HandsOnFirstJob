import 'package:flutter/material.dart';
import 'textfield.dart';
import 'titulo.dart';

class Titulobrinquedo extends StatelessWidget {
  const Titulobrinquedo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Titulo(),
        Nomebrinquedo(),
      ],
    );
  }
}
