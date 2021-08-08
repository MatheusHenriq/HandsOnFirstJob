import 'package:flutter/material.dart';

class BotaoCancelar extends StatelessWidget {
  final String? cancelar;
  const BotaoCancelar({Key? key, this.cancelar}) : super(key: key);

// Widget: Representa um botão escrito "cancelar".
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 80,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Cancelar',
            style: TextStyle(
              fontFamily: 'AGENCYR',
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
