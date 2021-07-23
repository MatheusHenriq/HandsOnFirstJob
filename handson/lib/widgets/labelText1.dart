import 'package:flutter/material.dart';

class TextField1 extends StatelessWidget {
  final String? caixa1;
  const TextField1({Key? key, this.caixa1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: 25,
        right: 25,
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
