import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  final String texto;
  const Texto({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          texto,
          style: TextStyle(fontSize: 19),
        ),
      ],
    );
  }
}
