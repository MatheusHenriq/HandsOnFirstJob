import 'package:flutter/material.dart';

class BotaoCancelar extends StatelessWidget {
  final String? cancelar;
  const BotaoCancelar({Key? key, this.cancelar}) : super(key: key);

// Widget: Representa um botão escrito "cancelar".
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35,
        right: 20,
        top: 0,
        bottom: 0,
      ),
      child: InkWell(
        child: Container(
          width: double.infinity,
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
      ),
    );
  }
}
