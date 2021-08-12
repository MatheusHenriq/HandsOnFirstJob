import 'package:flutter/material.dart';

class TextField2 extends StatelessWidget {
  final String? caixa2;
  const TextField2({Key? key, this.caixa2}) : super(key: key);

// Widget: Um campo de texto para inserir números.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: 120,
        right: 120,
        bottom: 15,
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration:
            InputDecoration(labelText: '', border: OutlineInputBorder()),
      ),
    );
  }
}
