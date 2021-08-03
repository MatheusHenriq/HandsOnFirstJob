import 'package:flutter/material.dart';

class TextRef1 extends StatelessWidget {
  final String? textoR;
  const TextRef1({Key? key, this.textoR}) : super(key: key);

//Widget: Texto
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 8),
      child: Text('Nome Do Responsável:',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          )),
    );
  }
}
