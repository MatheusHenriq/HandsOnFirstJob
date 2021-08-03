import 'package:flutter/material.dart';

class Observation extends StatelessWidget {
  const Observation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.green[100],
              border: Border.all(color: Colors.green.shade900),
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle),
          constraints: BoxConstraints.tightFor(width: 50, height: 50),
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/observacoes.png',
            color: Colors.green[900],
          ),
        ),
        onTap: () {});
  }
}
