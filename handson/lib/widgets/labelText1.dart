import 'package:flutter/material.dart';

class TextField1 extends StatelessWidget {
  final String? caixa1;
  const TextField1({Key? key, this.caixa1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: 75,
        right: 75,
        bottom: 15,
      ),
      child: TextField(
        decoration:
            InputDecoration(labelText: '', border: OutlineInputBorder()),
      ),
    );
  }
}
