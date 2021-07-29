import 'package:flutter/material.dart';

class Observation extends StatelessWidget {
  const Observation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.amber[50],
              border: Border.all(color: Colors.orange.shade900),
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle),
          constraints: BoxConstraints.tightFor(width: 50, height: 50),
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/observacoes.png',
            color: Colors.deepOrangeAccent,
          ),
        ),
        onTap: () {});
  }
}
