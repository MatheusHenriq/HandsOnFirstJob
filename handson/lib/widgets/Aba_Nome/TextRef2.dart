import 'package:flutter/material.dart';

class TextRef2 extends StatelessWidget {
  final String? texto2R;
  const TextRef2({Key? key, this.texto2R}) : super(key: key);

//Widget: Texto
  @override
  Widget build(BuildContext context) {
    return Text(
      'CPF:',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 18,
      ),
    );
  }
}
