import 'package:flutter/material.dart';

class BotaoCancelar extends StatelessWidget {
  final String? cancelar;
  const BotaoCancelar({Key? key, this.cancelar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 135,
        right: 135,
        top: 35,
        bottom: 10,
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
