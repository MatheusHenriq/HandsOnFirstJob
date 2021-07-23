import 'package:flutter/material.dart';

class TextRef extends StatelessWidget {
  final String? textoR;
  const TextRef({Key? key, this.textoR}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text('Nome do Responsável:',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          )),
    );
  }
}
