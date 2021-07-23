import 'package:flutter/material.dart';

class TextField2 extends StatelessWidget {
  final String? caixa2;
  const TextField2({Key? key, this.caixa2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: 100,
        right: 100,
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
